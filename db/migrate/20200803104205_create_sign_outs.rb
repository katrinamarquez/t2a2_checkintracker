class CreateSignOuts < ActiveRecord::Migration[6.0]
  def change
    create_table :sign_outs do |t|
      t.date :date_out
      t.time :time_out
      t.text :out_comments

      t.timestamps
    end
  end
end
