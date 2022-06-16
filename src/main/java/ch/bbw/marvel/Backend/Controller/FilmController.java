package ch.bbw.marvel.Backend.Controller;

import ch.bbw.marvel.Backend.Models.Film;
import ch.bbw.marvel.Backend.Services.FilmService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CrossOrigin;
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
