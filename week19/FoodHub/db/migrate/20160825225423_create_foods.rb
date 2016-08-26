class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :calories
      t.string :rating

      t.timestamps
    end
  end
end
