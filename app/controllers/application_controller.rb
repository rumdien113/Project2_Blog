class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    protect_from_forgery with: :exception
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    
  protected

  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])
  end
end