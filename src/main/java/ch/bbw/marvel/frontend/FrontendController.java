package ch.bbw.marvel.frontend;

import ch.bbw.marvel.frontend.models.User;
import ch.bbw.marvel.frontend.service.FrontendActorService;
import ch.bbw.marvel.frontend.service.FrontendFilmService;
import ch.bbw.marvel.frontend.service.LoginService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletResponse;

@Controller
public class FrontendController {

// ---------------------------------------------------------------------------------------------------------------------
// ATTRIBUTES
    private LoginService loginService = new LoginService();
    private FrontendFilmService filmService = new FrontendFilmService();
    private FrontendActorService actorService = new FrontendActorService();

// ---------------------------------------------------------------------------------------------------------------------
// LOGIN-SYSTEM
    @GetMapping("/login")
    public String login(@CookieValue(name="currentUser", defaultValue="undefined.undefined") String cookieValue,
                        Model model) {

        String result = "login";
        if(loginService.hasUser(cookieValue)) {
            result = "redirect:/";
        }
        model.addAttribute("user", new User());
        return result;
    }

    @PostMapping("/login")
    public String postLogin(@ModelAttribute User user, HttpServletResponse response) {

        Cookie cookie = loginService.login(user);
        String result = "login";
        if(cookie != null) {
            result = "redirect:/";
            response.addCookie(cookie);
        }

        return result;
    }


    @GetMapping("/register")
    public String register(@CookieValue(name="currentUser", defaultValue="undefined.undefined") String currentUser,
                           Model model) {

        String result = "redirect:/";
        if(!loginService.hasUser(currentUser)) {
            result = "register";
            model.addAttribute("user", new User());
        }
        return result;
    }

    @PostMapping("/register")
    public String register(@ModelAttribute User user, HttpServletResponse response) {
        Cookie cookie = loginService.register(user);
        String result = "register";
        if(cookie != null) {
            result = "redirect:/";
            response.addCookie(cookie);
        }

        return result;
    }

    // logs out the user and redirect to the login page
    @GetMapping("logout")
    public String logout(HttpServletResponse response) {
        Cookie cookie = new Cookie("currentUser", null);
        response.addCookie(cookie);
        return "redirect:/login";
    }

// ---------------------------------------------------------------------------------------------------------------------
// LOGGED-IN AREA

    @GetMapping("/")
    public String index(@CookieValue(name="currentUser", defaultValue="undefined.undefined") String currentUser,
                        Model model) {

        String result = "redirect:/login";
        if(loginService.hasUser(currentUser)) {
            result = "index.html";
            System.out.println(filmService.getAllFilms().get(0));
            model.addAttribute("films", filmService.getAllFilms());
        }
        return result;
    }

    @GetMapping("/film")
    public String film(@RequestParam(name="name", required=true) String name,
                       @CookieValue(name="currentUser", defaultValue = "undefined.undefined") String currentUser, Model model) {
        String result = "redirect:/login";
        if(loginService.hasUser(currentUser)) {
            result = "film";
            model.addAttribute("film", filmService.getFilm(name));
            model.addAttribute("actors", actorService.getAllActors());
        }

        return result;
    }


}
