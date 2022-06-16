package ch.bbw.marvel.Backend.Controller;

import ch.bbw.marvel.Backend.Models.Film;
import ch.bbw.marvel.Backend.Services.FilmService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import java.util.List;

@Controller
public class FilmController {
    private FilmService filmService;

    @GetMapping("/all/films")
    public List<Film> getAll() {
        return filmService.getAllFilm();
    }
}
