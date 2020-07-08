class Player < ActiveRecord::Base
    has_many :review
    has_many :game, through: :review
   
    def my_reviews
        self.review
    end

    def find_my_game
        self.game.map{|key| key.name}
    end
    
    def write_review(game, review, rate)
        #error uninitialized constant Player::Games
        Review.new(player_id: self.id, game_id: games.id, player_review: review, rating: rate)
    end
    
      
    
    def delete_player_game(name)
       
    end     

    # def delete_game(game)
    #     remove = self.games.find { |game| game.game_id == game}
    #     remove.destroy 
    # end


end


