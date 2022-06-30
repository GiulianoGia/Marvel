package ch.bbw.marvel.backend.controller;

import ch.bbw.marvel.backend.services.ActorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import ch.bbw.marvel.backend.models.Actor;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:8081")
public class ActorController {
    @Autowired
    ActorService actorService;

    @GetMapping("/actors/all")
    public List<Actor> getAll() {
        return actorService.getAllActor();
    }

    @PostMapping(value = "/actors/create", params = {"age", "firstname", "img", "lastname"})
    public Actor create(@RequestParam("age") int age, @RequestParam("firstname") String firstname, @RequestParam("img") String img, @RequestParam("lastname") String lastname) {
        Actor newActor = new Actor(age, firstname, img, lastname);
        return actorService.createActor(newActor);
    }

    // sort actors by age
    @GetMapping(value = "/actors/sort", params = {"age"})
    public List<Actor> sortByAge(@RequestParam("age") int age) {
        return actorService.sortByAge(age);
    }
}
