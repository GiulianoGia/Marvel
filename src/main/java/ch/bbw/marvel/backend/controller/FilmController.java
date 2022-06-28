package ch.bbw.marvel.backend.controller;

import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.services.FilmService;
import com.fasterxml.jackson.annotation.ObjectIdGenerators;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.services.FilmService;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @PostMapping(value = "/film/new", params = {"cost", "name", "rating", "image", "description", "video"})
    public Map<String, Boolean> createFilm(@RequestParam("cost") Integer cost, @RequestParam("name") String name, @RequestParam("rating") Double rating, @RequestParam("image") String image, @RequestParam("description") String description, @RequestParam("video") String video) {
        Film film = new Film(cost, name, rating, image, description, video);
        if (filmService.getFilmByName(film).isEmpty()) {
            filmService.createFilm(film);
            return Collections.singletonMap("worked", true);
        }
        else {
            return Collections.singletonMap("worked", false);
        }

    }

    @GetMapping(value = "/films/best")
    public List<Film> getBestRatingFilms() {
        return filmService.getBestRatingFilms();
    }
}
