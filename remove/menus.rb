# commenting out for testing
# require 'tty/prompt'

# $prompt = TTY::Prompt.new

# def get_new_username
#     puts "What should I call you?"
#     print "> "
#     name = gets.chomp
#     $user = User.create(name: name)
#     ## TODO Populate all canon=true people
#     print "\e[2J\e[f"
#     puts "Welcome!"
#     sleep(1.5)
#     select_film_menu
# end


# def welcome
#     print "\e[2J\e[f"
#     puts "Welcome to Studio Ghibli Character Builder!"
#     sleep(1.5)
#     response = $prompt.select("Are you new here?", "Yes", "No")

#         case
#             when response == "Yes"
#                 get_new_username

#             when response == "No"
#                 puts "What's your name?"
#                 response = gets.chomp

#                 if User.all.find { |user| user.name == response }
#                         puts "Oops, someone already has that name."
#                         get_new_username()
#                 elsif User.all.find { |user| user.name == response }
#                         $user = user
#                         puts "Hi #{$user.name}!"
#                         select_film_menu
#                 else
#                     puts "hmm... can't seem to find you"
#                     get_new_username()
#                 end
#         end
# end
 
# # welcome
# # Person.find_by(name: "Ashitaka").update(user_id: 8)

# def get_people_by_user
#     Person.all.find_by(user_id: self.id)
# end


# def get_types_by_films_of_user
#     #should return a list of films associated with people belonging to current user

# end


# def get_people_by_user_film
#     #select people associated with current user, and then with current film

# end


# def select_film_menu
#     #Entry Menu after User selection

#     response = $prompt.select("What should we do?",
#         "Work on existing film",
#         "Make new film",
#         "Exit")
        
#         case
#             when response == "Work on existing film"
#                 #film_select_menu()

#             when response == "Make new film"
#                 make_film_menu()

#             when response == "Exit"
#                 #end?
#         end
# end

# def film_select
# end


# def film_menu(film)
#     #Explores a selected film associated with the user

#     response = $prompt.select("What should we do with #{film.name}",
#         "See Characters",
#         "See Species",        
#         "Go Back")
#     case
#         when response == "See Characters"
#             film_character_menu()

#         when response == "See Species"
#             show_film_species()

#         when response == "Go Back"
#             select_film_menu()
#     end
# end


# def film_character_menu
#    #Selects for active user people, then by film
#    #Display character list
#    #Options:
# end


# def see_species
#     #Select people for active user, then film, then return unique types.
#     types = []
#     $user.people.map do |person|
#         if person.film_id == $film.film_id
#             types << person.type
#         end
#     end
#     types
# end


