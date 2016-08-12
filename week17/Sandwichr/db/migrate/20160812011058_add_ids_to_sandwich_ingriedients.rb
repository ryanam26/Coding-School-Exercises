class AddIdsToSandwichIngriedients < ActiveRecord::Migration[5.0]
  def change
    add_column :sandwich_ingriedients, :sandwich_id, :integer
    add_column :sandwich_ingriedients, :ingriedient_id, :integer
  end
end
