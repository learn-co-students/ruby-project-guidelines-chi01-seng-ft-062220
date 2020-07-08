require_relative '../config/environment.rb'

require 'net/http'
require 'uri'
require 'json'


def get_films
    uri = URI("https://ghibliapi.herokuapp.com/films")
    JSON.parse(Net::HTTP.get(uri))
end

def get_film_by_name(film_name)
    uri = URI("https://ghibliapi.herokuapp.com/films?title=#{film_name}")
    JSON.parse(Net::HTTP.get(uri))
end

def get_people_by_film(film_name)
    film_id = get_film_by_name(film_name)[0]["id"]
    #uri = URI("https://ghibliapi.herokuapp.com/films?id=#{film_id}")
    #Net::HTTP.get(uri)
    film_id
end
