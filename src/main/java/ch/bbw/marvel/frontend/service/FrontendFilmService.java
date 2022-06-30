package ch.bbw.marvel.frontend.service;

import ch.bbw.marvel.backend.models.FilmUser;
import ch.bbw.marvel.frontend.Config;
import ch.bbw.marvel.frontend.models.Film;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Service
public class FrontendFilmService {

// ---------------------------------------------------------------------------------------------------------------------
// ATTRIBUTES
    private RestTemplate restTemplate = new RestTemplate();

// ---------------------------------------------------------------------------------------------------------------------
// GET-FILM

    public List<Film> getAllFilms() {
        ResponseEntity<List<Film>> response = restTemplate.exchange(Config.API_HOST + "/films/all", HttpMethod.GET,
                null, new ParameterizedTypeReference<List<Film>>() {});
        List<Film> films = response.getBody();
        return films;
    }

    public Film getFilm(String name) {
        ResponseEntity<List<Film>> response = restTemplate.exchange(Config.API_HOST + "/films/all", HttpMethod.GET,
                null, new ParameterizedTypeReference<List<Film>>() {});
        List<Film> films = response.getBody();
        return films.get(0);
    }

    public List<Film> mostExpensiveFilms() {
        ResponseEntity<List<Film>> response = restTemplate.exchange(Config.API_HOST + "/films/expensive", HttpMethod.GET,
                null, new ParameterizedTypeReference<List<Film>>() {});
        return response.getBody();
    }

    public List<Film> getBestRatingFilms() {
        ResponseEntity<List<Film>> response = restTemplate.exchange(Config.API_HOST + "/films/best", HttpMethod.GET,
                null, new ParameterizedTypeReference<List<Film>>() {});
        return response.getBody();
    }

    // get user films
    public List<FilmUser> getUserFilms(int userID) {
        ResponseEntity<List<FilmUser>> response = restTemplate.exchange(Config.API_HOST + "/filmUser/user?userID=" + userID,
                HttpMethod.GET, null, new ParameterizedTypeReference<List<FilmUser>>() {});
        return response.getBody();
    }


// ---------------------------------------------------------------------------------------------------------------------
// POST-FILM
}
