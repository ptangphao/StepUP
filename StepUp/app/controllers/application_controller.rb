class ApplicationController < ActionController::Base
  def current_user
  	if session[:user_type] == "Therapist"
    	@current_user ||= Therapist.find(session[:user_id]) if session[:user_id]
    elsif session[:user_type] == "Organization"  		
   		@current_user ||= User.find(session[:user_id]) if session[:user_id]
   	else
   		nil
   	end
  end

  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
