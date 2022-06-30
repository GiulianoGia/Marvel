package ch.bbw.marvel.backend.repository;

import ch.bbw.marvel.backend.models.Actor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ActorRepository extends JpaRepository<Actor, Integer> {
    @Query(value = "select * from actor", nativeQuery = true)
    List<Actor> getAllActor();

    @Query(value = "insert into actor (actorid, age, firstname, img, lastname) Values (:id, :age, :firstname, :img, :lastname)", nativeQuery = true)
    Actor createActor(@Param("id") Integer id, @Param("age") Integer age, @Param("firstname") String firstname, @Param("img") String img, @Param("lastname") String lastname);

    @Query(value="select * from actor order by age desc limit 5", nativeQuery = true)
    List<Actor> sortByAge(@Param("age") Integer age);
}
