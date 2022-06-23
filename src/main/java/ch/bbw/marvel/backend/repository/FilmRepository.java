package ch.bbw.marvel.backend.repository;

import ch.bbw.marvel.backend.models.Film;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface FilmRepository extends JpaRepository<Film, Integer> {
    @Query(value = "select * from film", nativeQuery = true)
    List<Film> getAllFilm();

    @Query(value = "insert into film (cost, name, rating) VALUES (:cost, :name, :rating)", nativeQuery = true)
    Film createFilm(@Param("cost") Integer cost, @Param("name") String name, @Param("rating") Double rating);
}
