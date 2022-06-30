package ch.bbw.marvel.backend.controller;

import ch.bbw.marvel.backend.models.FilmActor;
import ch.bbw.marvel.backend.services.FilmActorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.logging.Logger;

@RestController
public class FilmActorController {

    @Autowired
    FilmActorService filmActorService;
    Logger logger = Logger.getLogger(FilmActorController.class.getName());

    @GetMapping("/filmActors/all")
    public List<FilmActor> getAll() {
        return filmActorService.getAllFilmActor();
    }

    @GetMapping("/filmActors/filmID")
    public List<FilmActor> getFilmActorsByFilmID(@RequestParam("filmID") int filmID) {
        return filmActorService.getFilmActorsByFilmID(filmID);
    }

    @PostMapping(value="/filmActor/create", params = {"filmID", "actorID"})
    public FilmActor createFilmActor(@RequestParam("filmID") int filmID, @RequestParam("actorID") int actorID) {
        logger.info("filmID: " + filmID + " actorID: " + actorID);
        return filmActorService.createFilmActor(filmID, actorID);
    }
}
