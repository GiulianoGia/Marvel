package ch.bbw.marvel.backend.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class FilmActor {

    @Id
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "actor_actor_id", nullable = false)
    private Actor actor;

    @ManyToOne
    @JoinColumn(name = "film_film_id")
    private Film film;

    public Actor getActor() {
        return actor;
    }
}
