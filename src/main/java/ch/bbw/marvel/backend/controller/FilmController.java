package ch.bbw.marvel.backend.controller;

import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.services.FilmService;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.services.FilmService;

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

    @PostMapping(value = "/film/new", params = {"cost", "name", "rating"})
    public Film createFilm(@RequestParam("cost") Integer cost, @RequestParam("name") String name, @RequestParam("rating") Double rating ) {
        Film film = new Film(cost, name, rating);
        return filmService.createFilm(film);
    };
}
