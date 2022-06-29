package ch.bbw.marvel.backend.models;

import javax.persistence.*;

@Entity
public class FilmUser {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int filmUserID;

    @ManyToOne
    @JoinColumn(name = "userID", nullable = false)
    private User user;

    @ManyToOne
    @JoinColumn(name = "filmID", nullable = false)
    private Film film;

    public FilmUser(int filmID, int userID) {}

    public FilmUser() {}

    public int getFilmID() {
        return film.getFilmID();
    }

    public int getUserID() { return user.getId();}

    public void setFilmID(int filmUserID) {
        this.filmUserID = filmUserID;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Film getFilm() {
        return film;
    }

    public void setFilm(Film film) {
        this.film = film;
    }
}
