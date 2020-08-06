class AddRestaurantIdToFeedback < ActiveRecord::Migration[6.0]
  def change
    add_column :feedbacks, :restaurant_id, :integer
  end
end
