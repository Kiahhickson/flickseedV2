class PagesController < ApplicationController
  
  def home
    @founders = Founder.all
    @investors = Investor.all
  end


end
