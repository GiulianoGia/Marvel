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

    @GetMapping(value = "film/get", params = {"name"})
    public List<Film> getFilmBy(@RequestParam("name") String name) {
        Film film = new Film(name);
        return filmService.getFilmByName(film);
    }

    @PostMapping(value = "/film/new", params = {"cost", "name", "rating"})
    public Film createFilm(@RequestParam("cost") Integer cost, @RequestParam("name") String name, @RequestParam("rating") Double rating ) {
        Film film = new Film(cost, name, rating);
        if (filmService.getFilmByName(film) == null) {
            return filmService.createFilm(film);
        }
        else {
            return null;
        }
    }
}
