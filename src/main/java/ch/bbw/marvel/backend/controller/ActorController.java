package ch.bbw.marvel.backend.controller;

import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import ch.bbw.marvel.backend.models.Actor;

import java.util.List;

@RestController
@CrossOrigin(origins = "http://localhost:8081")
public class ActorController {
    @GetMapping("/actors/all")
    public List<Actor> getAll() {
        return null;
    }
}
