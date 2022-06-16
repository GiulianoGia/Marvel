package ch.bbw.marvel.Backend.Controller;

import ch.bbw.marvel.Backend.Models.User;
import ch.bbw.marvel.Backend.Services.UserServiceInterface;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.logging.Logger;

@RestController
@CrossOrigin(origins = "http://localhost:8080")
public class UserController {

    @Autowired
    UserServiceInterface userService;
    Logger logger = Logger.getLogger(UserController.class.getName());

    @GetMapping("/users/all")
    public List<User> getUser() {
        return userService.getAllUsers();
    }

    @GetMapping("/user/get")
    public User getUserByID(
            @RequestParam(value = "id", required = false) Integer id,
            @RequestParam(value = "firstname", required = false) String firstname) {
        if (id != null) {
            return userService.getUserByID(id);
        } else if (firstname != null) {
            return userService.getUserByFirstname(firstname);
        } else {
            return new User();
        }
    }

    @GetMapping("/user/login")
    public Boolean getUserLogin(@RequestParam(value = "email") String email,
                                @RequestParam(value = "password") String password) {
        var loggedIn = userService.getUserLogin(email, password) != null;
        if (loggedIn) {
            userService.updateUser(email);
        }
        return loggedIn;
    }

    @PostMapping(value = "/user/new", params = {"age", "email", "firstname", "lastname", "password"})
    public void postUser(@RequestParam("age") Integer age,
                         @RequestParam("email") String email,
                         @RequestParam("firstname") String firstname,
                         @RequestParam("lastname") String lastname,
                         @RequestParam("password") String password) {
        var user = new User(age, email, firstname, lastname, password);
        if (userService.getUserByFirstname(user.getFirstname()) == null) {
            logger.info("userID: "+user.getId().toString());
            userService.createUser(user);
        } else {
            logger.info(userService.getUserByFirstname(user.getFirstname()).toString());
        }
    }

    @PostMapping("/user/update")
    public void updateUser(@RequestParam("email") String email) {
        userService.updateUser(email);
    }

    @DeleteMapping("/user/delete")
    public void deleteUser(@RequestParam("id") Integer id) {
        logger.info("userID: "+id.toString());
        userService.deleteUser(id);
    }
}
