class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

   before_action :authenticate_user!, :except => [:index]
   
   def after_sign_in_path_for(resource)
   	  session[:username] = current_user.email
      '/products#index'
   end

  protect_from_forgery with: :exception
end
