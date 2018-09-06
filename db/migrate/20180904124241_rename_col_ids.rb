class RenameColIds < ActiveRecord::Migration[5.2]
  def change
    rename_column :orders, :id, :order_id
    rename_column :payment_channels, :id, :channel_id
    rename_column :products, :id, :product_id
    # drop table distributors
    drop_table :distributors
  end
end
