class ApplicationController < ActionController::Base
  before_action :configure_permitted_parmeters, if: :devise_controller?
  private
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end
end
