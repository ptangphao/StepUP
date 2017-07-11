class SessionsController < ApplicationController

  def new
  end

  def create
  	if params[:user_id] == "therapist"
    	user = Therapist.find_by_email(params[:email])
    else
    	user = Organization.find_by_email(params[:email])
    end

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      session[:user_type] = user.class.to_s
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    session[:user_type] = nil
    redirect_to '/login'
  end

end