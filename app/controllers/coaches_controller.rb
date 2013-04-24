class CoachesController < ApplicationController
#removes the need to specifically define respond_to formats for each route
respond_to :html, :xml, :json

   def index
    respond_with(@coaches = Coach.all)
  end


  # GET /coach/1
  # GET /coaches/1.json

  def show
    respond_with(@coaches = Coach.find(params[:id]))
  end

  # GET /runners/1/edit
  def edit
    respond_with(@coach = Coach.find(params[:id]))
  end

  def update
     @coach = Coach.find(params[:id])
     respond_to do |format|
      if @coach.update_attributes(params[:coach])
        format.html { redirect_to(coaches_path, :notice => 'Page was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

end
