package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.FilmUser;

import java.util.List;

public interface FilmUserServiceInterface {
    List<FilmUser> getAllFilmUser();

    FilmUser createFilmUser(FilmUser film);
}
