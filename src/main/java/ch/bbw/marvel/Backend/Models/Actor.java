package ch.bbw.marvel.Backend.Models;

import com.sun.istack.NotNull;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Actor {
    @Id
    private int actorID;
    @NotNull
    private String firstname;
    @NotNull
    private String lastname;
    @NotNull
    private int age;
    @NotNull
    private String img;

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
