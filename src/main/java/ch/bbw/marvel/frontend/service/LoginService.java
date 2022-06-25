package ch.bbw.marvel.frontend.service;

import ch.bbw.marvel.frontend.models.Login;
import ch.bbw.marvel.frontend.models.User;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import javax.servlet.http.Cookie;
import java.nio.charset.StandardCharsets;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

@Service
public class LoginService {

// ---------------------------------------------------------------------------------------------------------------------
// CONSTANTS
    private final String SECRET_KEY = "_hogwarts";
    public static final String API_HOST = "http://localhost:8080";

// ---------------------------------------------------------------------------------------------------------------------
// ATTRIBUTES

// ---------------------------------------------------------------------------------------------------------------------
// USER-MANAGEMENT

    // gets the current user
    public User currentUser(String cookieValue) {
        // checks if the cookie is correct
        User user = null;
        if(cookieValue != null) {
            String[] values = cookieValue.split("\\.");
            try{
                if(checkSignature(values[0], values[1])) {
                    // sends a request to the API to get the User
                    RestTemplate restTemplate = new RestTemplate();
                    user = restTemplate.getForObject(String.format("%s/user/get?id=%s",API_HOST, values[0]),
                             User.class);
                }
            }
            catch(NoSuchAlgorithmException e) {
                e.printStackTrace();
            }

        }
        
        return user;
    }

    public boolean hasUser(String cookieValue) {
        return currentUser(cookieValue) != null;
    }

    public Cookie login(User user) {
        RestTemplate restTemplate = new RestTemplate();
        Login login = restTemplate.getForObject(String.format("%s/user/login?email=%s&password=%s", API_HOST,
                user.getEmail(), user.getPassword()), Login.class);

        Cookie cookie = null;
        if(login.isWorked()) {
            try {
                cookie = new Cookie("currentUser", login.getUserID() + "." +
                        this.createSignature(login.getUserID()));
            }
            catch(NoSuchAlgorithmException e) {
                e.printStackTrace();
            }
        }
        return cookie;
    }


// ---------------------------------------------------------------------------------------------------------------------
// REGISTER
    public Cookie register(User user) {
        RestTemplate restTemplate = new RestTemplate();
        restTemplate.postForLocation(String.format("%s/user/new?age=%d&email=%s&firstname=%s&lastname=%s&password=%s",
                API_HOST, user.getAge(), user.getEmail(), user.getFirstname(), user.getLastname(), user.getPassword()), null);
        return login(user);
    }


// -----------------------------------------------------------------------------------------------------------------
// SIGNATURE
    private String createSignature(String originalMessage) throws NoSuchAlgorithmException {
        MessageDigest digest = MessageDigest.getInstance("SHA-256");
        byte[] encodedhash = digest.digest((originalMessage + SECRET_KEY).getBytes(StandardCharsets.UTF_8));

        // builds a hexstring
        String signature = bytesToHex(encodedhash);

        return signature;
    }

    private boolean checkSignature(String originalText, String hash) throws NoSuchAlgorithmException {
        boolean result = createSignature(originalText).equals(hash);
        return result;
    }

    private static String bytesToHex(byte[] hash) {
        StringBuilder hexString = new StringBuilder(2 * hash.length);
        for (int i = 0; i < hash.length; i++) {
            String hex = Integer.toHexString(0xff & hash[i]);
            if(hex.length() == 1) {
                hexString.append('0');
            }
            hexString.append(hex);
        }
        return hexString.toString();
    }
}
