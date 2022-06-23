package ch.bbw.marvel.backend.models;

import com.sun.istack.NotNull;

import javax.persistence.*;


@Entity
public class Film {
    @Id
    private int filmID;
    @NotNull
    private String name;
    @NotNull
    private int cost;
    @NotNull
    private double rating;

    public Film(Integer cost, String name, Double rating) {
        this.cost = cost;
        this.name = name;
        this.rating = rating;
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

}
