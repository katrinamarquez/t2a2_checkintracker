class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :restaurant_name
      t.text :restaurant_address
      t.string :restaurant_phone
      t.string :restaurant_email

      t.timestamps
    end
  end
end
