package ch.bbw.marvel.frontend.service;

import ch.bbw.marvel.frontend.Config;
import ch.bbw.marvel.frontend.models.Actor;
import ch.bbw.marvel.frontend.models.Film;

import ch.bbw.marvel.frontend.models.FilmActor;
import org.springframework.core.ParameterizedTypeReference;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.ArrayList;
import java.util.List;

@Service
public class FrontendActorService {

// ---------------------------------------------------------------------------------------------------------------------
// ATTRIBUTES

    private RestTemplate restTemplate = new RestTemplate();

// ---------------------------------------------------------------------------------------------------------------------

    public List<Actor> getAllActors() {
        ResponseEntity<List<Actor>> response = restTemplate.exchange(Config.API_HOST + "/actors/all",
                HttpMethod.GET, null, new ParameterizedTypeReference<List<Actor>>() {});
        return response.getBody();
    }

    public List<Actor> getActorsToFilm(Film film){
        ResponseEntity<List<FilmActor>> response = restTemplate.exchange(Config.API_HOST + "/filmActors/filmID?filmID=" + film.getFilmID(),
                HttpMethod.GET, null, new ParameterizedTypeReference<List<FilmActor>>() {});
        List<Actor> actors = new ArrayList<Actor>();
        for(FilmActor filmActor: response.getBody()) {
            actors.add(filmActor.getActor());
        }
        return actors;
    }

    public Actor getActorByName(String name) {
        Actor result = null;
        for(Actor actor: this.getAllActors()) {
            if((actor.getFirstname() + " " + actor.getLastname()).equalsIgnoreCase(name)) {
                result = actor;
                break;
            }
        }
        return result;
    }
}
