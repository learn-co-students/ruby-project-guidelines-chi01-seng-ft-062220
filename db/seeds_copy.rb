require_relative '../config/environment'
require 'pry'


Film.destroy_all
Type.destroy_all
Person.destroy_all


def get_id(string)
    string.split(/\//).last
end

def api_creator
    people = RestClient.get('https://ghibliapi.herokuapp.com/people')
    people = JSON.parse(people)
    people
    
    name_species_film = []
        people.each do |info|
            character_info = []

            character_info << info["name"]
            character_info << info["eye_color"]
            character_info << info["hair_color"]
            character_info << info["gender"]
            character_info << info["age"]
            character_info << Type.find_species_names(get_id(info["species"]))
            character_info << Film.find_film_titles(get_id(info["films"][0]))

            name_species_film << character_info
        end
        name_species_film
    end
    
def api_connection
        all_species = creator.collect {|element| element[5]}.uniq
        type_instances = all_species.map {|element| Type.create(name: element, canon:true)}

        all_films = creator.collect {|element| element[6]}.uniq
        film_instances = all_films.map{|element| Film.create(title: element, description: Film.provide_description(element)), canon:true}

        connected = []
        creator.each do |element|
            connected << element[0] = Person.create(name: "#{element[0]}", eye_color: "#{element[1]}", hair_color: "#{element[2]}", gender: "#{element[3]}", age: "#{element[4]}", user_id: nil, canon:true)
            type_instances.find do |info|
                if element[5] == info[:name]
                element[0][:type_id] = info[:id]
                end
            end
            film_instances.find do |info|
                if element[6] == info[:title]
                element[0][:film_id] = info[:id]
                end
            end
            element[0].save
        end
    connected
end

api_creator
api_connection

binding.pry