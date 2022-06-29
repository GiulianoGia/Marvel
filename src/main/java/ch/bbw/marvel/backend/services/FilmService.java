package ch.bbw.marvel.backend.services;
import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.repository.FilmRepository;
import org.springframework.beans.factory.annotation.Autowired;
import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.repository.FilmRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FilmService implements FilmServiceInterface{
    @Autowired
    private FilmRepository filmRepository;

    @Override
    public List<Film> getAllFilm() {
        return filmRepository.getAllFilm();
    }

    @Override
    public Film createFilm(Film film) {
        return filmRepository.createFilm(film.getFilmID(), film.getCost(), film.getName(), film.getRating(), film.getImage(), film.getDescription(), film.getVideo());
    }

    @Override
    public List<Film> getFilmByName(Film film) {
        return filmRepository.getFilmByName(film.getName());
    }

    @Override
    public List<Film> getBestRatingFilms() {
        return filmRepository.getBestRatingFilms();
    }

    @Override
    public void changeRating(int filmID, Double rating) {
        filmRepository.changeRating(filmID, rating);
    }
}
