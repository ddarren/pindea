class IdeasController < ApplicationController

  def show
    @idea = Idea.find(params[:id])
    @good_point = GoodPoint.new
    @bad_point = BadPoint.new
    @consideration_point = ConsiderationPoint.new
  end
  
  def create
    @idea = Idea.new(params[:idea])
    if @idea.save
      flash[:notice] = "Idea added."
    end
    redirect_to(@idea)
  end
  
  def create_point
    @point_name = params[:point_name] 
    if @point_name == 'good'
      @point = GoodPoint.new(params[:good_point])
    end
    if @point_name == 'bad'
      @point = BadPoint.new(params[:bad_point])
    end   
    if @point_name == 'consideration'
      @point = ConsiderationPoint.new(params[:consideration_point])
    end
       
    save_point @point
  end
  

  private
  
  def save_point point
    @idea = Idea.find(params[:id])  
    point.idea = @idea
    point.save
  end

  
end
