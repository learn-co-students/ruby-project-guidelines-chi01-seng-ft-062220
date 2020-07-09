require_relative '../config/environment'
require 'pry'


Film.destroy_all
Type.destroy_all
Person.destroy_all

def get_id(string)
    string.split(/\//).last
end

def creator
    people = Person.get_people
    name_species_film = []
        people.each do |info|
            character_info = []
            character_info << info["name"]
            character_info << Type.find_species_names(get_id(info["species"]))
            character_info << Film.find_film_titles(get_id(info["films"][0])) #this will only return the title for the very first film in the array
            name_species_film << character_info
        end

        all_species = name_species_film.collect {|element| element[1]}.uniq
        all_films = name_species_film.collect {|element| element[2]}.uniq
        
        type_instances = all_species.map {|element| Type.create(name: element)}
        film_instances = all_films.map{|element| Film.create(title: element)}
        
        connected = []
        name_species_film.each do |element|
            type_info = ""
            film_info = ""
            connected << element[0] = Person.create(name: "#{element[0]}")
            type_instances.find do |info|
                if element[1] == info[:name]
                element[0][:type_id] = info[:id]
                type_info = element[0][:type_id]
                end
            end
            film_instances.find do |info|
                if element[2] == info[:title]
                element[0][:film_id] = info[:id]
                film_info = element[0][:film_id]
                end
            end
            element[0].save
        end
    connected.first(10)
end

# creator


# binding.pry