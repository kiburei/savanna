class ProductsController < ApplicationController

  def create
    Product.create!(product_params)
    redirect_to admin_dash_index_path
  end

  private

  def product_params
    params.permit(:name, :cost)
  end

end
