class AdminController < ApplicationController
  layout "admin"
  
  def index
  end

  def forms
  end

  def signin
    render :signin, layout: "authentication"
  end

  def signup
    render :signup, layout: "authentication"
  end
end
