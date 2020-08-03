class AddUserIdToSignOuts < ActiveRecord::Migration[6.0]
  def change
    add_column :sign_outs, :user_id, :integer
  end
end
