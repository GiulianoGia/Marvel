package ch.bbw.marvel.backend.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import ch.bbw.marvel.backend.models.FilmUser;

import java.util.List;

@Repository
public interface FilmUserRepository extends JpaRepository<FilmUser, Integer> {
    @Query(value = "select * from filmuser", nativeQuery = true)
    public List<FilmUser> getAllFilmUser();

    @Query(value = "insert into filmuser (filmid, userid) VALUES (:id, :userid)", nativeQuery = true)
    public FilmUser createFilmUser(@Param("id") Integer id, @Param("userid") Integer userid);
}
