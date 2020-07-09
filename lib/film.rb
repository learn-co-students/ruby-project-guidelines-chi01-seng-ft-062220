require 'pry'
require_relative '../config/environment'

class Film < ActiveRecord::Base
    has_many :people
    has_many :types, through: :people
    
    @@films = RestClient.get('https://ghibliapi.herokuapp.com/films')
    @@films = JSON.parse(@@films)
    @@films

    def self.find_film_titles(film_id)
    
        title = ""
        
        @@films.find do |info|
            if info["id"] == film_id
            title = info["title"]
            end
        end
        title
    end

    # def list_characters
    #     search = Person.find_by(film_id: self.id) 
    #     search.map{|info| "#{info.name} - #{info.species.name}"}

    #     # Person.find_by(name:"Ashitaka").film_id
    #     # Film.find_by(id: 28).title
    # end

    def self.provide_description(film_title)
        synopsis = ""
        @@films.each do |element|
            element.find do |key, value|
                if value == film_title
                    synopsis = element["description"]
                end
            end
        end
        synopsis
    end

    # Person.all.delete(Person.find_by(name: "Ashitaka"))
    # Film.find_by(title: ).description

    # - May make sense to skip this one. API only provides a link to locations, but no identifying information.
    # - We'd have to go over the films array and match the original film ID to the end of the string, 
    #   then work from there. 
    # - Just feels like it may make more sense to use director, producer, Rotten Tomatoes information instead?
        # def self.provide_location(film_title) 
        #     setting = ""
        #     Film.get_films.each do |element|
        #         element.find do |key, value|
        #             if value == film_title
        #                 setting = element["locations"]
        #             end
        #         end
        #     end
        #     setting
        # end
end

# binding.pry