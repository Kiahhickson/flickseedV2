class SessionsController < ApplicationController

  def new
  end

  def create
    founder = Founder.find_by :email => params[:email]
    if founder.present? 
      session[:founder_id] = founder.id
      redirect_to root_path
    else
      flash[:error] = 'Invalid Login'
      redirect_to login_path
    end
  end

  def destroy 
    session[:founder_id] = nil 
    redirect_to '/' 
  end

end 



