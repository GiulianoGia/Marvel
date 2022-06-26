package ch.bbw.marvel.backend.repository;

import ch.bbw.marvel.backend.models.FilmActor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

public interface FilmActorRepository extends JpaRepository<FilmActor, Integer> {
    @Query(value = "select * from film_actor", nativeQuery = true)
    List<FilmActor> getAllFilmActor();

    @Query(value = "insert into film_actor (actor_actor_id, film_film_id) Values (:actorid, :filmid)", nativeQuery = true)
    FilmActor createFilmActor(@Param("filmid") Integer filmid, @Param("actorid") Integer actorid);
}
