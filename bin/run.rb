require_relative '../config/environment'

'names?
    top shelf
    your turn!

welcome!
    existing player
        find player == name
    new player
        player.new

main menu: what would you like to do? (whos turn is it?)

    my reviews
        puts >Review.all == self
        new options:
            write a review of a game (should this be in main menu?)
                Review.new
            delete a review of a game
                Review.x.delete
            edit? a review of a game
                Review.x.edit
            back to main menu
                cd . main menu (idk how to do that)
            delete all games :O
                Review.all.player_id == self delete
                puts 'cleared the board'

    my games
        puts >Review.all==self : game name 
        new options:
            write a review of a game (should this be in main menu?)
                Review.new
            delete a review of a game
                Review.x.delete
            edit? a review of a game
                Review.x.edit
            back to main menu
                cd . main menu (idk how to do that)
            delete all games :O
                    Review.all.player_id == self delete
                    puts 'cleared the board'

    top 3 games
        Game.top_three_games
        automatically puts you back in main menu?
                should we pick either top 3 or top game? maybe we can put top game on the welcome screen?
                
    top game
        Game.top_three_games
        automatically puts you back in main menu?

    random game
        Game.random_game
        automatically puts you back in main menu?
        
    '

    

puts "HELLO WORLD"
