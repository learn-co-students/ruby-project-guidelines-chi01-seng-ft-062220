class CreatePlayers < ActiveRecord::Migration[4.2]
    def change
        create_table :players do |t|
            t.text :name 
        end    
    end    
end    