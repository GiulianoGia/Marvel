package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.User;
import ch.bbw.marvel.backend.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService implements UserServiceInterface {
    @Autowired
    public UserRepository repository;

    @Override
    public List<User> getAllUsers() {
        var users = (List<User>) repository.getUserFirstname();
        return users;
    }

    @Override
    public void createUser(User user) {
        repository.createUser(user.getId(), user.getAge(), user.getEmail(), user.getFirstname(), user.getLastname(), user.getPassword(), user.getLastLoggedIn());
    }

    @Override
    public void deleteUser(Integer id) {
        repository.deleteUser(id);
    }

    @Override
    public User getUserByID(Integer id) {
        return repository.getUserByID(id);
    }

    @Override
    public User getUserLogin(String email, String password) {
        return repository.getUserLogin(email, password);
    }

    @Override
    public User getUserByFirstname(String firstname) {
        return repository.getUserByFirstname(firstname);
    }

    @Override
    public void updateUser(String email) {
        repository.updateUser(email);
    }

}
