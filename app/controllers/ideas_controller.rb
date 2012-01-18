class IdeasController < ApplicationController

  
  def create
    @idea = Idea.new(params[:idea])
    if @idea.save
      flash[:notice] = "Idea added."
    end
    render :action => "new"
  end
  
end
