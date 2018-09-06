class OrdersController < ApplicationController
  before_action :authenticate_distributor!

  def index
    @orders = current_distributor.orders
    @payments = current_distributor.transactions
    @products = Product.all
  end

  def create
    @order = current_distributor.orders.build(order_params)
    @order.cost = Product.find(params[:product].to_i).cost * order_params[:quantity].to_i
    @order.save
    redirect_to root_url
  end

  private

  def order_params
    params.permit(:quantity, :pick_up)
  end


end
