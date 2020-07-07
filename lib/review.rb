class Review < ActiveRecord::Base
    belongs_to :players
    belongs_to :games
    
    ##id: INTEGER PRIMARY KEY, player_id: INTEGER, game_id: INTEGER, player_review: TEXT, rating: INTEGER

    # def top_rated_game
    # end
end    