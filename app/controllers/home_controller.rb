class HomeController < ApplicationController

  caches_page :index

  def index
  	@featured = Featured.first()
  	expires_in 1.day, :public => false
  end
  
  def about
  
  end
end
