class AddCostToOrders < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :cost, :decimal, :precision => 8, :scale => 2
  end
end
