class Game < ActiveRecord::Base
    has_many :reviews
    has_many :players, through: :reviews

    # def list_by_type
    # end    

    # def ordered_by_rating
    # end 
end