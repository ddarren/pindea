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
    
    point_class = Kernel.const_get(@point_name.camelize + 'Point')
    @point = point_class.new(params[(@point_name + '_point').to_sym]) 
       
    assign_idea_to_point @point
    @point.save
  end
  

  private
  
  def assign_idea_to_point point
    @idea = Idea.find(params[:id])  
    point.idea = @idea
  end  


  
end
