class IdeasController < ApplicationController
  def index
    @ideas = Idea.search(params[:search]).paginate(:per_page => 10, :page => params[:page])
  end
  
  def show
    @idea = Idea.find(params[:id])
    @good_point = GoodPoint.new
    @bad_point = BadPoint.new
    @consideration_point = ConsiderationPoint.new
    
    if request.xhr?
      respond_to do |format|
          format.html { render :layout => 'empty' }
      end
    end
  end
  
  def create
    @idea = Idea.new(params[:idea])
    @idea.save  
    flash[:isNew] = "true"
    redirect_to @idea
  end
  
  def create_point
    @point_name = params[:point_name] 
    
    point_class = Kernel.const_get(@point_name.camelize + 'Point')
    @point = point_class.new(params[(@point_name + '_point').to_sym]) 
       
    assign_idea_to_point @point
    @point.save
    
    render :nothing => true
  end
  


  private
  
  def assign_idea_to_point point
    @idea = Idea.find(params[:id])  
    point.idea = @idea
  end  


  
end
