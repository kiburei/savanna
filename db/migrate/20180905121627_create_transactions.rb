class CreateTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :transactions do |t|
      t.decimal :amount, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
