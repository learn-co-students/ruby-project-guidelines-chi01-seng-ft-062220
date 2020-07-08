class Film < ActiveRecord::Base
    has_many :people
    has_many :types, through: :people

    def self.get_films
        films = RestClient.get('https://ghibliapi.herokuapp.com/films')
        films = JSON.parse(films)
        films
    end

    def self.find_film_titles(film_id)
        title = ""
        self.get_films.find do |info|
            if info["id"] == film_id
            title = info["title"]
            end
        end
        title
    end
end