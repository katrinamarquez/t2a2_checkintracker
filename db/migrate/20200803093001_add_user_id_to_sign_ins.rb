class AddUserIdToSignIns < ActiveRecord::Migration[6.0]
  def change
    add_column :sign_ins, :user_id, :integer
  end
end
