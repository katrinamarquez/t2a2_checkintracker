class CreateSignIns < ActiveRecord::Migration[6.0]
  def change
    create_table :sign_ins do |t|
      t.date :date_in
      t.time :time_in
      t.text :in_comments

      t.timestamps
    end
  end
end
