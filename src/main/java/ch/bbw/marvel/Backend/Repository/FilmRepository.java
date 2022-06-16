package ch.bbw.marvel.Backend.Repository;

import ch.bbw.marvel.Backend.Models.Film;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.util.List;

@Repository
public interface FilmRepository extends JpaRepository<Film, Integer> {
    @Query(value = "select * from film", nativeQuery = true)
    List<Film> getAllFilm();
}
