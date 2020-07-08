class CreatePeople < ActiveRecord::Migration[5.2]

    def change

        create_table :people do |t|
            t.string :ghibli_id
            t.string :title
            t.string :director
            t.string :people
            t.string :species
        end
    
    end
    
end