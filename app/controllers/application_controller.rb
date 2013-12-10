class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  before_filter :configure_permitted_parameters, if: :devise_controller?

    def after_sign_in_path_for(resource_or_scope)
      if resource_or_scope == :user
        user_path(@user) 
      end
    end


    def after_sign_out_path_for(resource_or_scope)
      if resource_or_scope == :user
        new_user_session_path # users path
       end
    end

     protected

     def configure_permitted_parameters
       devise_parameter_sanitizer.for(:sign_up) << :firstname
       devise_parameter_sanitizer.for(:sign_up) << :lastname
       devise_parameter_sanitizer.for(:sign_up) << :aboutme
       devise_parameter_sanitizer.for(:sign_up) << :birthdate
       
       devise_parameter_sanitizer.for(:account_update) << :firstname
       devise_parameter_sanitizer.for(:account_update) << :lastname
       devise_parameter_sanitizer.for(:account_update) << :aboutme
       devise_parameter_sanitizer.for(:account_update) << :birthdate
     end
end
