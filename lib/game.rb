class Game < ActiveRecord::Base
    has_many :reviews
    has_many :players, through: :reviews

    ##id: INTEGER PRIMARY KEY, name: TEXT, type: TEXT 


    # def list_by_type(type)
    # end    

    # def ordered_by_rating
    # end 
end