package ch.bbw.marvel.frontend.service;

import ch.bbw.marvel.frontend.Config;
import ch.bbw.marvel.frontend.models.Film;
import ch.bbw.marvel.backend.models.User;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Service
public class FrontendUserService {
    private RestTemplate restTemplate = new RestTemplate();

    public List<User> getAllUsers() {
        ResponseEntity<List<User>> response = restTemplate.exchange(Config.API_HOST + "/users/all", HttpMethod.GET,
                null, new ParameterizedTypeReference<List<User>>() {});
        return response.getBody();
    }

    public List<User> getUserByFirstname(String firstname) {
        ResponseEntity<List<User>> response = restTemplate.exchange(Config.API_HOST + "/user/getByFirstnameIsLike?firstname=" + firstname, HttpMethod.GET,
                null, new ParameterizedTypeReference<List<User>>() {});
        return response.getBody();
    }
}
