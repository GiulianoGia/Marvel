package ch.bbw.marvel.backend.services;
import ch.bbw.marvel.backend.models.FilmActor;
import java.util.List;

public interface FilmActorServiceInterface {
    List<FilmActor> getAllFilmActor();

    FilmActor createFilmActor(Integer filmID, Integer actorID);

    List<FilmActor> getFilmActorsByFilmID(Integer filmID);
}
