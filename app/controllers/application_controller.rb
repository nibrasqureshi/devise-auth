# frozen_string_literal: true

class ApplicationController < ActionController::Base
	before_action :authenticate_admin!
  # protect_from_forgery with: :exception
  # before_action :authenticate_admin!, :configure_permitted_parameters, if: :devise_controller?

  # protected

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password) }

  #   devise_parameter_sanitizer.permit(:account_update) do |u|
  #     u.permit(:first_name, :last_name, :email, :password, :current_password)
  #   end
  # end
end
