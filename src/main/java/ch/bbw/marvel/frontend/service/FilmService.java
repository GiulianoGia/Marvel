package ch.bbw.marvel.frontend.service;

import ch.bbw.marvel.frontend.Config;
import ch.bbw.marvel.frontend.models.Film;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;

@Service
public class FilmService {

// ---------------------------------------------------------------------------------------------------------------------
// ATTRIBUTES
    private RestTemplate restTemplate = new RestTemplate();

// ---------------------------------------------------------------------------------------------------------------------
// GET-FILM

    public List<Film> getAllFilms() {
        return restTemplate.getForObject(String.format("%s/films/all", Config.API_HOST), List.class);
    }

// ---------------------------------------------------------------------------------------------------------------------
// POST-FILM
}
