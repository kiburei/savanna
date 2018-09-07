class AdminDashController < ApplicationController
  before_action :authenticate_admin!
  before_action :set_distributor, only: [:remove_dist]

  def index
    @distributors = Distributor.all
    @transactions = DistFloat.all
    @orders = Order.all
    @products = Product.all
  end

  def add_dist
    @distributor = Distributor.create!(distributor_params)
    redirect_to admin_dash_index_path, notice: "<%= @distributor %> Created!"
  end

  def remove_dist
    @distributor.delete
    redirect_to admin_dash_index_path
  end

  private

  def set_distributor
    @distributor = Distributor.find(params[:id])
  end

  def distributor_params
    params.permit(:dist_name, :dist_contact, :dist_float, :email, :password)
  end

end
