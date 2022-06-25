package ch.bbw.marvel.backend.models;

import javax.persistence.*;

@Entity
public class FilmActor {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
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