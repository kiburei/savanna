class AddDistributorToTransnactions < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :distributor, foreign_key: true
  end
end
