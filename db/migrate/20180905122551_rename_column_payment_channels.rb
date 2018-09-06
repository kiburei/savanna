class RenameColumnPaymentChannels < ActiveRecord::Migration[5.2]
  def change
    rename_column :payment_channels, :channel_id, :payment_channel_id
  end
end
