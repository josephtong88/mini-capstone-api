class AddInventoryCount < ActiveRecord::Migration[6.1]
  def change

    add_column :products, :inventory_quantity, :integer
  end
end
