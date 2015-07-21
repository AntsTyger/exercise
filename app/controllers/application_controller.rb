class ApplicationController < ActionController::Base
before_filter :configure_permitted_parameters, if: :devise_controller?
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :name
    devise_parameter_sanitizer.for(:sign_up) << :weight
    devise_parameter_sanitizer.for(:sign_up) << :age
    devise_parameter_sanitizer.for(:sign_up) << :height
    devise_parameter_sanitizer.for(:sign_up) << :BMI
    devise_parameter_sanitizer.for(:sign_up) << :gender
  end 

  def after_sign_in_path_for(resource)
    user_path(resource)
  end

  def after_sign_up_path_for(resource)
    user_path(resource)
  end

  def after_update_path_for (resource)
    user_path(resource)
  end
  
  
  
end
