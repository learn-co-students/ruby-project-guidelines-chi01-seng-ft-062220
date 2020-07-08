class Game < ActiveRecord::Base
    has_many :review
    has_many :player, through: :review

    def self.list_by_type(type)
        self.all.select do |game|
            game.game_type == type
        end
    end
            
    def self.random_game
        self.all.sample
    end
end