class SessionsController < ApplicationController

  def new
  end

  def investor_login
    investor = Investor.find_by :email_address => params[:session][:email_address] 
    if investor.present? 
      session[:investor_id] = investor.id
      redirect_to founders_path
    else
      flash[:error] = 'Invalid Login'
      redirect_to login_path
    end

  end

  def founder_login
    founder = Founder.find_by :email_address => params[:session][:email_address] 
    if founder.present? 
      session[:founder_id] = founder.id
      redirect_to founder
    else
      flash[:error] = 'Invalid Login'
      redirect_to login_path
    end
  end

  def founder_logout 
    session[:founder_id] = nil 
    session[:investor_id] = nil
    redirect_to '/' 
  end

  def investor_logout  
    session[:founder_id] = nil 
    session[:investor_id] = nil 
    redirect_to '/' 
  end

end 



