class CreateSandwichIngriedients < ActiveRecord::Migration[5.0]
  def change
    create_table :sandwich_ingriedients do |t|

      t.timestamps
    end
  end
end
