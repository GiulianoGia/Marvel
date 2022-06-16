package ch.bbw.marvel.Backend.Controller;

import ch.bbw.marvel.Backend.Models.Film;
import ch.bbw.marvel.Backend.Services.FilmService;
import org.springframework.stereotype.Controller;
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
