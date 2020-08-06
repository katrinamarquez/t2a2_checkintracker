class AddRestaurantIdToSignIn < ActiveRecord::Migration[6.0]
  def change
    add_column :sign_ins, :restaurant_id, :integer
  end
end
