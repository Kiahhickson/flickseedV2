class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :fetch_investor
  before_action :fetch_founder

  helper_method :current_founder 
  helper_method :current_investor 

  def current_founder 
    # session[:founder_id] = nil
    @current_founder ||= Founder.find_by(:id => session[:founder_id]) if session[:founder_id]
    session[:founder_id] = nil unless @current_founder
  end

  def current_investor 
    # session[:investor_id] = nil
    @current_investor ||= Investor.find_by(:id => session[:investor_id]) if session[:investor_id]
    session[:investor_id] = nil unless @current_investor
  end

  def require_founder
    redirect_to '/login' unless current_founder
  end

  def require_investor
    redirect_to '/login' unless current_investor
  end

  private
  def fetch_investor
    if session[:investor_id].present?
      @current_investor = Investor.find_by :id => session[:investor_id]
      session[:investor_id] = nil unless @current_investor.present?
    end
  end

  def fetch_founder
    if session[:founder_id].present?
      @current_founder = Founder.find_by :id => session[:founder_id]
      session[:founder_id] = nil unless @current_founder.present?
    end
  end

end

