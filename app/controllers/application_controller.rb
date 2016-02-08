class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  helper_method :current_founder 

  def current_founder 
    @current_founder ||= Founder.find(session[:founder_id]) 
    if session[:founder_id]
    end
  end 


  def require_founder
    redirect_to '/login' 
    unless current_founder
    end
  end


end

