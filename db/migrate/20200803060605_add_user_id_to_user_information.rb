class AddUserIdToUserInformation < ActiveRecord::Migration[6.0]
  def change
    add_column :user_informations, :user_id, :integer
  end
end
