package ch.bbw.marvel.frontend;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class FrontendController {

    @GetMapping("/")
    public String index() {

        return "index.html";
    }

    @GetMapping("/login")
    public String login() {
        return "login";
    }

h
}
