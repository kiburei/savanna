class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.string :quantity
      t.datetime :pick_up
      t.decimal :order_cost, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
