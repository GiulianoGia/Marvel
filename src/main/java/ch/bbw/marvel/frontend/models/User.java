package ch.bbw.marvel.frontend.models;;

// IMPORTS
import org.hibernate.validator.constraints.Length;
import org.springframework.format.annotation.DateTimeFormat;

import javax.validation.constraints.*;
import java.util.Date;

public class User {

// ---------------------------------------------------------------------------------------------------------------------
// ATTRIBUTES
    private int id;

    @NotNull
    @Size(min=3, max=30)
    private String firstname;

    @NotNull
    @Size(min=3, max=30)
    private String lastname;

    @NotNull
    @Min(value=18)
    private int age;

    @NotNull
    @Email
    private String email;

    @NotNull
    private String password;

    @NotNull
    private String confirmPassword;

    @NotNull
    @DateTimeFormat
    private Date lastLoggedIn;

// ---------------------------------------------------------------------------------------------------------------------
// CONSTRUCTORS
    public User() {}

    public User(Integer age, String email, String firstname, String lastname, String password) {
        this.age = age;
        this.email = email;
        this.firstname = firstname;
        this.lastname = lastname;
        this.password = password;
        this.lastLoggedIn = new Date(System.currentTimeMillis());
    }

// ---------------------------------------------------------------------------------------------------------------------
// GETTER AND SETTER

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public Date getLastLoggedIn() {
        return lastLoggedIn;
    }

    public void setLastLoggedIn(Date lastLoggedIn) {
        this.lastLoggedIn = lastLoggedIn;
    }
}
