class CreateIngriedients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingriedients do |t|
      t.string :name
      t.integer :calories

      t.timestamps
    end
  end
end
