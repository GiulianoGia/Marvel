package ch.bbw.marvel.backend.controller;

import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.services.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.services.FilmService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:8081")
public class FilmController {
    @Autowired
    private FilmService filmService;

    @GetMapping("/films/all")
    public List<Film> getAll() {
        return filmService.getAllFilm();
    }
}
