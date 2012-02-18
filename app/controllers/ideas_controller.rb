class IdeasController < ApplicationController

  def show
    @idea = Idea.find(params[:id])
    @good_point = GoodPoint.new
  end
  
  def create
    @idea = Idea.new(params[:idea])
    if @idea.save
      flash[:notice] = "Idea added."
    end
    redirect_to(@idea)
  end
  
  def create_good_point
    @good_point = GoodPoint.new(params[:good_point])
    @idea = Idea.find(params[:id])  
    @good_point.idea = @idea
    @good_point.save

  end

  
end
