class IdeasController < ApplicationController

  
  def create
    @idea = Idea.new(params[:idea])
    @idea.save
    render :action => "new"
  end
  
end
