package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.Film;
import ch.bbw.marvel.backend.repository.FilmRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FilmService implements FilmServiceInterface{
    private FilmRepository filmRepository;
    @Override
    public List<Film> getAllFilm() {
        return filmRepository.getAllFilm();
    }
}
