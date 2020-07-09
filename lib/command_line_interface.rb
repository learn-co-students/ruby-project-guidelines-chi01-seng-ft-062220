require_relative '../config/environment'
$prompt = TTY::Prompt.new
    
def game_intro
   p "Welcome to" 
   p'House Rules' 
end

def player_info
    answer = $prompt.select("Are You a:", %w(current_player new_player))
        case
            when answer == "current_player"
                puts "What is Your Name?"
                print ">"
                name = gets.chomp
                player = Player.all.find {|player| player.name == name}
                puts "Hey #{player.name} nice to see you again!"
            when answer == "new_player"
                puts "What is your name?"
                print ">"
                name = gets.chomp
                player = Player.create(name: name)
                puts "Hello #{player.name} thank you for joining us!"
        end            
end    

def main_menu
        answer = $prompt.select("How Can I Help You?", %w(reviews games 
        suprise_me! exit))
        case
        when answer == "reviews"
            print ">"
            review_menu
        when answer == "games"
            print ">"
            game_menu
        when answer == "suprise_me!"
            print ">"
            puts Game.random_game.name
            sleep 3 
            whats_next
        when answer == "exit"
            puts "Thanks #{player.name} for seeing you! Please come again!"
            sleep 5
        end            
end

# def review_menu
#     answer = $prompt.select()
#     case 
#         when answer == "my_review"
            #whats_next    
#         when answer == "delete_reviews"
            #whats_next
        # when answer == "update_review"
            #whats_next
#     end            
# end

# def game_menu
#     answer = $prompt.select()
#     case 
#         when answer == "top_game"
            #whats_next
        # when answer == "top_three_games"
            #whats_next       
        # when answer == "game_by_type"
            #whats_next
#         when answer == "all_of_the_games"
            #Game.list_of_all_games
            #whats_next 
        # when answer == "delete_all_my_games" 
            #whats_next 
#     end
# end   

def whats_next
    answer = $prompt.select("Do you want to:", %w(main_menu exit))
    case 
        when answer == "main_menu"
            puts ">"
            main_menu
        when answer == "exit"
            puts "Thanks #{player.name} for seeing you! Please come again!"
            sleep 5
    end        
end    

# def credits
#     "creators: Haley Farro and Eve Reichmann"
#     "Mod 1 Flatiron Ruby Project"
#     "Thanks All!"
# end     