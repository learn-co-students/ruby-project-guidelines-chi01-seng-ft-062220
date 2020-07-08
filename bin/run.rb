require_relative '../config/environment'



def films_with_people
    films = get_films
    films.select do |film|
        film["people"].length > 1
    end
end

films = films_with_people

puts films.length