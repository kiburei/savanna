class AddAtrrToDistributors < ActiveRecord::Migration[5.2]
  def change
    add_column :distributors, :dist_name, :string
    add_column :distributors, :dist_contact, :string
    add_column :distributors, :dist_float, :decimal, :precision => 8, :scale => 2
  end
end
