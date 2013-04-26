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

  # GET /coaches/1/edit
  def edit
    respond_with(@coach = Coach.find(params[:id]))
  end

  # GET /coach/new
  # GET /coach/new.json
  def new
    respond_with(@coach = Coach.new)
  end
  
  def create
     @coach = Coach.new(params[:coach])
     
     respond_to do |format|
      if @coach.save
        format.html { redirect_to(coaches_path, :notice => 'Coach was successfully added.') }
      else
        format.html { render :action => "new" }
      end
    end
  end 

  def update
     @coach = Coach.find(params[:id])
     respond_to do |format|
      if @coach.update_attributes(params[:coach])
        format.html { redirect_to(coaches_path, :notice => 'Coach was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

end
