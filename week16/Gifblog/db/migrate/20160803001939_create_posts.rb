class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :gif
      t.string :number
      t.string :of
      t.integer :votes

      t.timestamps null: false
    end
  end
end
