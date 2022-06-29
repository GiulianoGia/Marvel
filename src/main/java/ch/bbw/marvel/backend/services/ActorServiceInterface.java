package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.Actor;

import java.util.List;

public interface ActorServiceInterface {
    List<Actor> getAllActor();

    Actor createActor(Actor actor);

    List<Actor> sortByAge(int age);
}
