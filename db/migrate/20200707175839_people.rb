class People < ActiveRecord::Migration[5.2]
    def change
        create_table :people do |c|
            c.string :name
            c.string :eye_color
            c.string :hair_color
            c.string :gender
            c.integer :age
            c.integer :type_id
            c.integer :film_id
            c.integer :user_id
            c.boolean :canon
        end
    end
end