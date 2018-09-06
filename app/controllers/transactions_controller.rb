class TransactionsController < ApplicationController
  before_action :set_order, only: [:create]

  def create
    @transaction = @order.transactions.build(transaction_params)
    @transaction.distributor_id = current_distributor.id
    @transaction.save
    redirect_to root_url
  end

  private

  def set_order
    @order = Order.find(params[:order_id])
  end

  def transaction_params
    params.permit(:amount, :payment_channel_id)
  end
end
