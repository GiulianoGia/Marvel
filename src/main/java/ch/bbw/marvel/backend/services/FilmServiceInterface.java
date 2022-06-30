package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.Film;

import java.util.List;

public interface FilmServiceInterface {
    List<Film> getAllFilm();

    Film createFilm(Film film);

    List<Film> getFilmByName(Film film);

    List<Film> getBestRatingFilms();

    List<Film> getFilmsMostExpensive();

    void changeRating(int filmID, Double rating);
}
