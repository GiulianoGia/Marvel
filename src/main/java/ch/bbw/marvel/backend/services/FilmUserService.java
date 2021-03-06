package ch.bbw.marvel.backend.services;

import ch.bbw.marvel.backend.models.FilmUser;
import ch.bbw.marvel.backend.repository.FilmUserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class FilmUserService implements FilmUserServiceInterface {
    @Autowired
    private FilmUserRepository filmUserRepository;

    @Override
    public List<FilmUser> getAllFilmUser() {
        return filmUserRepository.getAllFilmUser();
    }

    @Override
    public FilmUser createFilmUser(int filmID, int userID) {
        return filmUserRepository.createFilmUser(filmID, userID);
    }

    @Override
    public List<FilmUser> getUserFilms(int userID) {
        return filmUserRepository.getUserFilms(userID);
    }
}
