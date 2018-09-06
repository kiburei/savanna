class AddDistributorToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :distributor, foreign_key: true
  end
end
