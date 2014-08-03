class HomeController < ApplicationController
  def index
    @title = "Home | Trainer App"
  end
  
  def schedule
    @title = "Schedule"
  end
  
end
