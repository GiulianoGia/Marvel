package ch.bbw.marvel.Backend.Services;

import ch.bbw.marvel.Backend.Models.Film;
import ch.bbw.marvel.Backend.Repository.FilmRepository;
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
