class OrdersController < ApplicationController
  before_action :authenticate_distributor!

  def index
    @orders = current_distributor.orders
    @payments = current_distributor.transactions
  end

  def create
    @order = Order.create!(order_params)
    redirect_to root_url
  end

  private

  def order_params
    params.permit(:quantity, :pick_up)
  end


end
