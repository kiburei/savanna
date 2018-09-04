class AdminDashController < ApplicationController
  before_action :authenticate_admin!

  def index
    @orders = Order.all
  end

  def add_dist
  end

  def remove_dist
  end

end
