class AddPaymentChannelToDistFloat < ActiveRecord::Migration[5.2]
  def change
    add_reference :dist_floats, :payment_channel, foreign_key: true
  end
end
