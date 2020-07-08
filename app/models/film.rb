
class Film < ActiveRecord::Base

    def change
        add_column :ghibli_id, :title, :director, :people, :species
    end
    
end
