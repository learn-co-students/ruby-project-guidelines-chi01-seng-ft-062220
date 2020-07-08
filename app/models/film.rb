
class CreateFilms < ActiveRecord::Migration[5.2]

    def change

        create_table :films do |t|
            t.string :ghibli_id
            t.string :title
            t.string :director
            t.string :people
            t.string :species
        end
    
    end
    
end
