class Review < ActiveRecord::Base
    belongs_to :players
    belongs_to :games
    
    ##id: INTEGER PRIMARY KEY, player_id: INTEGER, game_id: INTEGER, player_review: TEXT, rating: INTEGER

    def self.top_rated_game
        self.all.sort { |r| r[:rating] }.reverse!.first
        #this only puts the first top rated game, should we make it a list? use "== 5" somehow or something
    end

    # def top_rated_game
    # end
end    