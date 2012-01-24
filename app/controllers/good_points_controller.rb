class GoodPointsController < ApplicationController
  def new 

  end
  
  def create
    @good_point = GoodPoint.new(params[:good_point])
    @good_point.idea = Idea.find(params[:idea_id])  
    @good_point.save
    flash[:notice] = "Good point added " +  @good_point.id.to_s
    render 'new'
  end

end