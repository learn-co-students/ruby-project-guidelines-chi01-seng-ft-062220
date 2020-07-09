class Player < ActiveRecord::Base
    has_many :reviews
    has_many :games, through: :reviews
   
    def my_reviews
        self.reviews.map{|key| key.player_review}
    end

    def find_my_games
        self.games.map{|key| key.name}.uniq
    end

    def delete_my_games
        self.games.destroy_all
        puts "cleared the board"
    end

    def write_review(game_id, review, rate)
        Review.create(player_id: self.id, game_id: game_id, player_review: review, rating: rate)
    end  

    def delete_review(game)
        game_review = self.games.find_by(name: game)
        game_review.destroy
        puts "Removed."
    end
    
    def update_review(game, review, rate)
        game_review = self.reviews.find_by(game_id: game)
        game_review.update(player_review: review, rating: rate)
        puts "Updated!"
    end    
end


