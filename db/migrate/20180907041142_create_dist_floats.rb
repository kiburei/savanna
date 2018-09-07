class CreateDistFloats < ActiveRecord::Migration[5.2]
  def change
    create_table :dist_floats do |t|
      t.string :amount, :default => 0

      t.timestamps
    end
  end
end
