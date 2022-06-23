package ch.bbw.marvel.frontend.models;

public class Film {

    private int filmID;
    private String name;
    private int cost;
    private double rating;
    private String image;

    public Film(Integer cost, String name, Double rating) {
        this.filmID = 0;
        this.cost = cost;
        this.name = name;
        this.rating = rating;
        this.image = "placeholder_film.png";
    }

    public Film() {}

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

}
