class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception, prepend: true
  before_action :configure_permitted_parameters, if: :devise_controller?

  
  def after_sign_in_path_for(resource)
    tweets_path
  end

  
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:firstname, :lastname, :username, :bio, :location, :email, :password])
      devise_parameter_sanitizer.permit(:account_update, keys: [:firstname, :lastname, :username, :bio, :location, :email, :password, :current_password])
  end
end
