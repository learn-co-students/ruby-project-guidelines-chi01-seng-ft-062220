require_relative '../config/environment'


films = get_films
people = get_people
locations = get_locations
species = get_species

puts "found #{films.length} films, #{people.length} people, #{locations.length} locations, #{species.length} species."
