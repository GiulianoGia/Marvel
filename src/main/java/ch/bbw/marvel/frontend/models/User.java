package ch.bbw.marvel.frontend.models;

import java.util.Date;

public class User {
    private int id;
    private String firstname;
    private String lastname;
    private int age;
    private String email;
    private String password;
    private Date lastLoggedIn;

    public User() {}

    public User(Integer age, String email, String firstname, String lastname, String password) {
        this.id = (int)(Math.random() * (1000000000 - 1 + 1) + 1); // Generate a random number, because I don't know how to auto_increment the id
        this.age = age;
        this.email = email;
        this.firstname = firstname;
        this.lastname = lastname;
        this.password = password;
        this.lastLoggedIn = new Date(System.currentTimeMillis());
    }

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

    public Date getLastLoggedIn() {
        return lastLoggedIn;
    }

    public void setLastLoggedIn(Date lastLoggedIn) {
        this.lastLoggedIn = lastLoggedIn;
    }
}
