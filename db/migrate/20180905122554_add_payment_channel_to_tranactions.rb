class AddPaymentChannelToTranactions < ActiveRecord::Migration[5.2]
  def change
    add_reference :transactions, :payment_channel, foreign_key: true
  end
end
