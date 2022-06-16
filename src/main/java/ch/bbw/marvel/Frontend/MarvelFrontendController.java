package ch.bbw.marvel.Frontend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class MarvelFrontendController {


    @GetMapping("/register")
    public String register() {
        return "register.html";
    }

    @PostMapping("/register")
    public String register_mail() {
        return "confirmation_mail";
    }

    @GetMapping("/login")
    public String login() {
        return "login.html";
    }

}
