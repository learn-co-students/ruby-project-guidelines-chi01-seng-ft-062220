class Review < ActiveRecord::Base
    belongs_to :players
    belongs_to :games
    
    ##id: INTEGER PRIMARY KEY, player_id: INTEGER, game_id: INTEGER, player_review: TEXT, rating: INTEGER

    def self.top_rated_game
        self.all.sort_by { |r| r[:rating] }.reverse!.first
        #this only puts the first top rated game, should we make it a list? use "== 5" somehow or something
    end

    def self.top_three_games
        self.all.sort_by {|r| r[:rating]}.reverse!.first(3)
    end
end    