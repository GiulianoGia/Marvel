package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.FilmActor;
import ch.bbw.marvel.backend.repository.FilmActorRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FilmActorService implements FilmActorServiceInterface {
    @Autowired
    FilmActorRepository filmActorRepository;

    public List<FilmActor> getAllFilmActor() {
        return filmActorRepository.getAllFilmActor();
    }

    public FilmActor createFilmActor(Integer filmID, Integer actorID) {
        return filmActorRepository.createFilmActor(filmID, actorID);
    }

}
