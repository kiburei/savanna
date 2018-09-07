class AddDistributorToDistFloat < ActiveRecord::Migration[5.2]
  def change
    add_reference :dist_floats, :distributor, foreign_key: true
  end
end
