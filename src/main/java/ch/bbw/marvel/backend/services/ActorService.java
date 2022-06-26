package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.Actor;
import ch.bbw.marvel.backend.repository.ActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ActorService implements ActorServiceInterface{

    @Autowired
    ActorRepository actorRepository;

    @Override
    public List<Actor> getAllActor() {
        return actorRepository.getAllActor();
    }

    @Override
    public Actor createActor(Actor actor) {
        return actorRepository.createActor(actor.getActorID(), actor.getAge(), actor.getFirstname(), actor.getImg(), actor.getLastname());
    }
}
