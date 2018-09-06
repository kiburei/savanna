class RenameColTransactions < ActiveRecord::Migration[5.2]
  def change
    rename_column :transactions, :id, :transaction_id
  end
end
