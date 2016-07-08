class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :user_id
      t.string :title
      t.datetime :deadline
      t.text :description

      t.timestamps null: false
    end
  end
end
