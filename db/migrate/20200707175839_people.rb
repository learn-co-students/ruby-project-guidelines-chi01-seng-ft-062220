class People < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |c|
      c.string :name
      c.integer :type_id
      c.integer :film_id
    end
  end
end
