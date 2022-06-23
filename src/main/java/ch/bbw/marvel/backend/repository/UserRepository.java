package ch.bbw.marvel.backend.repository;

import ch.bbw.marvel.backend.models.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import java.util.Date;
import java.util.List;

@Repository
public interface UserRepository extends JpaRepository<User, Integer> {
    @Query(value = "select * from user", nativeQuery = true)
    List<User> getUserFirstname();

    @Query(value = "insert into user (id, age, email, firstname, lastname, password,  last_logged_in) VALUES (:id, :age, :email, :firstname, :lastname, :password, :lastLoggedIn)", nativeQuery = true)
    List<User> createUser(@Param("id") Integer id, @Param("age") Integer age, @Param("email") String email, @Param("firstname") String firstname, @Param("lastname") String lastname, @Param("password") String password, @Param("lastLoggedIn") Date lastLoggedIn);

    @Query(value = "delete from user where id = :id", nativeQuery = true)
    void deleteUser(@Param("id") Integer id);

    @Query(value="select * from user where id = :id", nativeQuery = true)
    User getUserByID(@Param("id") Integer id);

    @Query(value="select * from user where firstname = :firstname", nativeQuery = true)
    User getUserByFirstname(@Param("firstname") String firstname);

    @Query(value = "select * from user where email = :email && password = :password", nativeQuery = true)
    User getUserLogin(@Param("email") String email, @Param("password") String password);

    @Query(value="update user set last_logged_in = NOW() where email = :email", nativeQuery = true)
    void updateUser(@Param("email") String email);
}
