package ch.bbw.marvel.backend.models;

import com.sun.istack.NotNull;

import javax.persistence.*;
import javax.validation.constraints.Null;


@Entity
public class Film {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int filmID;
    @NotNull
    private String name;
    @NotNull
    private int cost;
    @NotNull
    private double rating;
    @Null
    private String image;
    @Null
    private String video;
    @Null
    private String description;

    public Film(Integer cost, String name, Double rating, String image, String video, String description) {
        this.filmID = 0;
        this.cost = cost;
        this.name = name;
        this.rating = rating;
        this.video = video;
        this.description = description;
        this.image = image != null ? image : "placeholder_film.png";
    }

    public Film() {}

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Film(String name) {
        this.name = name;
    }

    public int getFilmID() {
        return filmID;
    }

    public void setFilmID(int id) {
        this.filmID = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCost() {
        return cost;
    }

    public void setCost(int cost) {
        this.cost = cost;
    }

    public double getRating() {
        return rating;
    }

    public void setRating(double rating) {
        this.rating = rating;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
}
