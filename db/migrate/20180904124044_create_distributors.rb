class CreateDistributors < ActiveRecord::Migration[5.2]
  def change
    create_table :distributors do |t|
      t.string :dist_name
      t.string :dist_contact
      t.decimal :dist_float, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
