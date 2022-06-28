package ch.bbw.marvel.backend.controller;

import ch.bbw.marvel.backend.models.FilmUser;
import ch.bbw.marvel.backend.repository.FilmRepository;
import ch.bbw.marvel.backend.services.FilmUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class FilmUserController {

    @Autowired
    private FilmUserService filmUserService;

    @GetMapping("/filmUser/all")
    public List<FilmUser> getAll() {
        return filmUserService.getAllFilmUser();
    }

    @GetMapping("/filmUser/create")
    public FilmUser create(@RequestParam("filmID") int filmID, @RequestParam("userID") int userID) {
        FilmUser filmUser = new FilmUser(filmID, userID);
        return filmUserService.createFilmUser(filmUser);
    }
}
