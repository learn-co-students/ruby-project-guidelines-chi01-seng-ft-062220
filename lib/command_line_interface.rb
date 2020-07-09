require_relative '../config/environment'
$prompt = TTY::Prompt.new
    
def game_intro
   p "Welcome to" 
   p'House Rules' 
end

def player_info
    answer = $prompt.select("are you a", %w(Current_Player New_Player))
        case
            when answer == "Current_Player"
                puts "What is your name?"
                print ">"
                name = gets.chomp
                player = Player.all.find {|player| player.name == name}
                puts "Hey #{player.name} nice to see you again!"
            when answer == "New_Player"
                puts "What is your name?"
                print ">"
                name = gets.chomp
                player = Player.create(name: name)
                puts "Hello #{player.name} thank you for joining us!"
        end            
end    

def main_menu
        answer = $prompt.select("How can I help you?", %w(Reviews Games 
        Suprise_me! Exit))
        case
        when answer == "Reviews"
            print ">"
            review_menu
        when answer == "Games"
            print ">"
            game_menu
        when answer == "Suprise_me!"
            print ">"
            puts Game.random_game.name
        when answer == "Exit"
            puts "Thanks for seeing you! Please come again!"
        end            
end

# def review_menu
#     answer = $prompt.select()
#     case 
#         when answer == "my_review"
        
#         when answer == "delete_reviews"

        # when answer == "update_review"
    
#     end            
# end

# def game_menu
#     answer = $prompt.select()
#     case 
#         when answer == "top_game"
        # when answer == "top_three_games"
        # when answer == "game_by_type"
#         when answer == "all_of_the_games"
            #Game.list_of_all_games

            ##more options main_menu or exit
        # when answer == "delete_all_my_games"  
#     end
# end    