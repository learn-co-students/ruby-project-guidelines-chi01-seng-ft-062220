require_relative '../config/environment.rb'
require 'rest-client'
require 'json'

def get_people
    people = RestClient.get('https://ghibliapi.herokuapp.com/people')
    people = JSON.parse(people)
    people
end

def get_films
    films = RestClient.get('https://ghibliapi.herokuapp.com/films')
    films = JSON.parse(films)
    films
end

def get_species
    films = RestClient.get('https://ghibliapi.herokuapp.com/species')
    films = JSON.parse(films)
    films
end

def get_locations
    films = RestClient.get('https://ghibliapi.herokuapp.com/locations')
    films = JSON.parse(films)
    films
end
