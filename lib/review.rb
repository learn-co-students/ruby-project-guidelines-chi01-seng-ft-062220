class Review < ActiveRecord::Base
    belongs_to :players
    belongs_to :games

    # def top_rated_game
    # end
end    