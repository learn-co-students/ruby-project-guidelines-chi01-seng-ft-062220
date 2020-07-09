class CreateGames < ActiveRecord::Migration[4.2]
    def change
        create_table :games do |t|
            t.text :name
            t.text :game_type
        end
    end    
end    