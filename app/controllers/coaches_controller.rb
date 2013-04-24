class RunnersController < ApplicationController
#removes the need to specifically define respond_to formats for each route
respond_to :html, :xml, :json

   def index
    respond_with(@coaches = Coach.all)
  end


  # GET /runner/1
  # GET /runners/1.json

  def show
    respond_with(@coaches = Coach.find(params[:id]))
  end

end
