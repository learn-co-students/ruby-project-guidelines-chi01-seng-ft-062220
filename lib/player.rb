class Player < ActiveRecord::Base
    has_many :reviews
    has_many :games, through: :reviews

    # def write_or_update_review
    # end
    
    # def delete_all_player_game
    # end
    
    # def delete_game
    # end
end