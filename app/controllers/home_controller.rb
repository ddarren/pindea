class HomeController < ApplicationController
  def index
    @ideas = Idea.order("created_at desc").limit(10)
  end  
end
