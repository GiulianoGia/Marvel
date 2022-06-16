package ch.bbw.marvel.Backend.Services;

import ch.bbw.marvel.Backend.Models.User;

import java.util.List;

public interface UserServiceInterface {
    List<User> getAllUsers();

    void createUser(User user);

    void deleteUser(Integer id);

    User getUserByID(Integer id);

    User getUserByFirstname(String firstname);

    User getUserLogin(String email, String password);

    void updateUser(String email);
}
