require_relative './api-accessor.rb'


def films_with_people
    get_films.select do |film|
        film["people"].length > 1
    end
end


def film_attribute_parser(film)
    my_attr = [:id, :title, :director, :people, :species]
    my_attr.map do |each_attr|
        film.map do |f_attr|
            if f_attr == each_attr
                my_attr[each_attr] = film[f_attr]
            end
        end
    end
    my_attr
end

