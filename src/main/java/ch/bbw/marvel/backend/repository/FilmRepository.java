package ch.bbw.marvel.backend.repository;

import ch.bbw.marvel.backend.models.Film;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import javax.annotation.PreDestroy;
import java.util.List;

@Repository
public interface FilmRepository extends JpaRepository<Film, Integer> {
    @Query(value = "select * from film", nativeQuery = true)
    List<Film> getAllFilm();

    @Query(value = "insert into film (filmid, cost, name, rating, image, description, video) VALUES (:id, :cost, :name, :rating, :image, :description, :video)", nativeQuery = true)
    Film createFilm(@Param("id") Integer id, @Param("cost") Integer cost, @Param("name") String name, @Param("rating") Double rating, @Param("image") String image, @Param("description") String description, @Param("video") String video);

    @Query(value="select * from film where name like :name%", nativeQuery = true)
    List<Film> getFilmByName(@Param("name") String name);

    @Query(value="select * from film order by rating desc limit 5", nativeQuery = true)
    List<Film> getBestRatingFilms();

    @Query(value="select * from film order by cost desc limit 8", nativeQuery = true)
    List<Film> getFilmsMostExpensive();

    @Query(value="update film set rating = :rating where filmid = :id", nativeQuery = true)
    void changeRating(@Param("id") Integer id, @Param("rating") Double rating);
}
