let timeout = 1000;
let films = getAllFilms();
let actors = getAllActors();

function sortFilmsByRating() {
    let sortedFilms = films.sort(function(a, b) {
        return b.rating - a.rating;
    });
    return sortedFilms;
}

function sortFilmsByBudget() {
    let sortedFilms = films.sort(function(a, b) {
        return b.budget - a.budget;
    });
    return sortedFilms;
}

function getAllFilms() {
    $.get('http://localhost:8080/films/all').then(function(response) {
        return response;
    });
}
function getAllActors() {
    $.get('http://localhost:8080/actors/all').then(function(response) {
        return response;
    });
}
function getAllFilmActors() {
    $.get('http://localhost:8080/filmActors/all').then(function(response) {
        return response;
    });
}