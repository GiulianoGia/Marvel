package ch.bbw.marvel.backend.models;

import com.sun.istack.NotNull;

import javax.persistence.*;
import java.util.LinkedHashSet;
import java.util.Set;

@Entity
public class Actor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int actorID;
    @NotNull
    private String firstname;
    @NotNull
    private String lastname;
    @NotNull
    private int age;
    @NotNull
    private String img;

    public Actor(int age, String firstname, String img, String lastname) {
        this.age = age;
        this.firstname = firstname;
        this.img = "personDefault.png";
        this.lastname = lastname;
    }

    public Actor() {
    }

    public int getActorID() {
        return actorID;
    }

    public void setActorID(int id) {
        this.actorID = id;
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }
}
