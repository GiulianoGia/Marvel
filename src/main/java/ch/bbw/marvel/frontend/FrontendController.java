package ch.bbw.marvel.frontend;

import ch.bbw.marvel.frontend.service.FrontendUserService;
import ch.bbw.marvel.frontend.models.Film;
import ch.bbw.marvel.frontend.models.User;
import ch.bbw.marvel.frontend.service.FrontendActorService;
import ch.bbw.marvel.frontend.service.FrontendFilmService;
import ch.bbw.marvel.frontend.service.LoginService;
import com.sun.xml.bind.util.AttributesImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

@Controller
public class FrontendController {

    // ---------------------------------------------------------------------------------------------------------------------
// ATTRIBUTES
    private LoginService loginService = new LoginService();
    private FrontendFilmService filmService = new FrontendFilmService();
    private FrontendActorService actorService = new FrontendActorService();
    private FrontendUserService userService = new FrontendUserService();

    // ---------------------------------------------------------------------------------------------------------------------
// LOGIN-SYSTEM
    @GetMapping("/login")
    public String login(@CookieValue(name = "currentUser", defaultValue = "undefined.undefined") String cookieValue,
                        Model model) {

        String result = "login";
        if (loginService.hasUser(cookieValue)) {
            result = "redirect:/";
        }
        model.addAttribute("user", new User());
        return result;
    }

    @PostMapping("/login")
    public String postLogin(@ModelAttribute User user, HttpServletResponse response) {

        Cookie cookie = loginService.login(user);
        String result = "login";
        if (cookie != null) {
            result = "redirect:/";
            response.addCookie(cookie);
        }
        else {
            user.setId(-1);
        }


        return result;
    }


    @GetMapping("/register")
    public String register(@CookieValue(name = "currentUser", defaultValue = "undefined.undefined") String currentUser,
                           Model model) {

        String result = "redirect:/";
        if (!loginService.hasUser(currentUser)) {
            result = "register";
            model.addAttribute("user", new User());
        }
        return result;
    }

    @PostMapping("/register")
    public String register(@Valid User user, BindingResult bindingResult, HttpServletResponse response) {
        Cookie cookie = null;
        if(!bindingResult.hasErrors()) {
            cookie = loginService.register(user);
        }

        String result = "register";
        if (cookie != null) {
            result = "redirect:/";
            response.addCookie(cookie);
        }

        return result;
    }

    @GetMapping("/forgetpassword")
    public String getForgetPassword() {
        return "forgetPassword";
    }

    // logs out the user and redirect to the login page
    @GetMapping("/logout")
    public String logout(HttpServletResponse response) {
        Cookie cookie = new Cookie("currentUser", null);
        response.addCookie(cookie);
        return "redirect:/login";
    }

// ---------------------------------------------------------------------------------------------------------------------
// LOGGED-IN AREA

    @GetMapping("/")
    public String index(@CookieValue(name = "currentUser", defaultValue = "undefined.undefined") String currentUser,
                        Model model) {
        // todo resend cookie
        String result = "redirect:/login";
        if (loginService.hasUser(currentUser)) {
            result = "index.html";
            // to get the user id
            String[] splicedUser = currentUser.split("[.]", 0);
            int userId = Integer.parseInt(splicedUser[0]);
            model.addAttribute("films", filmService.getAllFilms());
            model.addAttribute("bestFilms", filmService.getBestRatingFilms());
            model.addAttribute("expensiveFilms", filmService.mostExpensiveFilms());
            model.addAttribute("userList", filmService.getUserFilms(userId));
        }
        return result;
    }

    @GetMapping("/film")
    public String film(@RequestParam(name="name", required=true) String name,
                       @CookieValue(name="currentUser", defaultValue = "undefined.undefined") String currentUser, Model model) {


        // todo resend cookie
        String result = "redirect:/login";
        if (loginService.hasUser(currentUser)) {
            result = "film";
            Film film = filmService.getFilm(name);
            model.addAttribute("film", film);
            model.addAttribute("actors", actorService.getActorsToFilm(film));
        }
        return result;
    }

    @GetMapping("/profile")
    public String profile(@CookieValue(name="currentUser") String cookie, Model model) {
        String result = null;
        // todo resend cookie
        if (loginService.hasUser(cookie)) {
            model.addAttribute("user", loginService.currentUser(cookie));
            result = "profile";
        }
        else {
            result = "redirect:/login";
        }
        return result;
    }

    @GetMapping ("/search")
    public String searchUser(@CookieValue(name="currentUser") String cookie, Model model) {
        if (loginService.hasUser(cookie)) {
            model.addAttribute("users", userService.getAllUsers());
            return "user";
        }
        else {
            return "redirect:/login";
        }
    }


    @PostMapping("/search")
    public String searchByFirstname(@RequestParam String firstname, Model model) {
        System.out.println(userService.getUserByFirstname(firstname));
        if (userService.getUserByFirstname(firstname).isEmpty()) {
            model.addAttribute("users", userService.getAllUsers());
        } else {
            model.addAttribute("users", userService.getUserByFirstname(firstname));
        }
        return "user";
    }
}
