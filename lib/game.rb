class Game < ActiveRecord::Base
    has_many :reviews
    has_many :players, through: :reviews

    ##id: INTEGER PRIMARY KEY, name: TEXT, type: TEXT 

    def self.list_by_type(type)
        self.all.select do |game|
            game.game_type == type
        end
    end
            
    # def list_by_type(type)
        #pull type from game and match type 
        #map through array and print array of games  
    # end   
    
    def self.ordered_by_rating
        sorted_games = Review.all.map { |r| r[:rating] }.sort.reverse!
        #so far this creates an array with all of the ratings starting from 5, how do i get it to include the game's name?

        #     puts "#{game} #{rating}"
        #end
    end

    # def ordered_by_rating
        #pull from reviews and sort ratings from best to worse
    # end 

    def self.random_game
        self.all.sample
    end

    #def random_game
    #end
end