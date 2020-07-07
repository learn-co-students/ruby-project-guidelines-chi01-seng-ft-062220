class Player < ActiveRecord::Base
    has_many :reviews
    has_many :games, through: :reviews

    ##id: INTEGER PRIMARY KEY, name: TEXT
   
    # def write_or_update_review
    # end
    
    # def delete_all_player_game
    # end
    
    # def delete_game(game)
        #taking a argument of a game and delete that game from array
    # end

    #def give_me_a_random_game
    #end

    #def all_my_games
    #end
end