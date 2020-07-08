class Player < ActiveRecord::Base
    has_many :reviews
    has_many :games, through: :reviews

    ##id: INTEGER PRIMARY KEY, name: TEXT
   
    def write_review(game, review, rate)
        Review.new(player_id: self.id, game_id: games.id, player_review: review, rating: rate)
    end
    
    def delete_player_game(name)
       
    end
    
    # def fall_my_games(name)
    #     self.games.all.select {}
    # end
end





 # def delete_game(game)
    #     remove = self.games.find { |game| game.game_id == game}
    #     remove.destroy 
    # end