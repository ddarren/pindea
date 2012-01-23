class IdeasController < ApplicationController

  def show
    @idea = Idea.find(params[:id])
  end
  
  def create
    @idea = Idea.new(params[:idea])
    if @idea.save
      flash[:notice] = "Idea added."
    end
    redirect_to(@idea)
  end
  
end
