package ch.bbw.marvel.frontend.models;

import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.frontend.models.Actor;

import javax.persistence.*;

public class FilmActor {

    private Integer id;
    private Actor actor;
    private Film film;

    public FilmActor(int filmID, int actorID) {
    }

    public FilmActor() {}

    public Actor getActor() {
        return actor;
    }

    public Integer getFilmID() {
        return film.getFilmID();
    }

    public Integer getActorID() {
        return actor.getActorID();
    }
}
