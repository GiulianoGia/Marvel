package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.User;

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
