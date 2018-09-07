class DistFloatsController < ApplicationController

  def create
    @dist_float = DistFloat.create(dist_float_params)
    @dist_float.distributor_id = current_distributor.id
    @dist_float.save
    redirect_to root_url
  end

  def admin_float
    @dist_float = DistFloat.create(amount: params[:amount], distributor_id: params[:distributor_id], payment_channel_id: params[:payment_channel_id])
    @dist_float.save
    redirect_to admin_dash_index_url
  end

  private

  def dist_float_params
    params.permit(:amount, :payment_channel_id)
  end

end
