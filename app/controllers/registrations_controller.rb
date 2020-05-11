# frozen_string_literal: true

class RegistrationsController < Devise::RegistrationsController #:nodoc: all
  private

  def sign_up_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def acount_update_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  end
end
