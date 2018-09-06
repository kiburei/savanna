class CreatePaymentChannels < ActiveRecord::Migration[5.2]
  def change
    create_table :payment_channels do |t|
      t.string :channel

      t.timestamps
    end
  end
end
