class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:distributor).permit(:dist_name, :dist_contact, :dist_float, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:distributor).permit(:dist_name, :dist_contact, :dist_float, :email, :password, :password_confirmation)
  end
end
