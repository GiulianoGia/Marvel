package ch.bbw.marvel.backend.controller;

import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.services.FilmService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class FilmController {
    private FilmService filmService;

    @GetMapping("/all/films")
    public List<Film> getAll() {
        return filmService.getAllFilm();
    }
}
