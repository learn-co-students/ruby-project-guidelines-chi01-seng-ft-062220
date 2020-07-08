class Review < ActiveRecord::Base
    belongs_to :player
    belongs_to :game

    def self.top_rated_game
        self.all.sort_by { |r| r[:rating] }.reverse!.first
    end

    def self.top_three_games
        self.all.sort_by {|r| r[:rating]}.reverse!.first(3)
    end

    def self.best_to_worst
        self.all.sort_by{|r| r[:rating]}.reverse!
    end  
end    