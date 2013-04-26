class RunnersController < ApplicationController



   def index
    @runner = Runner.find(:all)
  end


  # GET /runner/1
  # GET /runners/1.json

 

  # GET /runners/1/edit
 def edit
    @runner = Runner.find(params[:id])
  end
  
 # GET /runner/new
  # GET /runner/new.json
 

  # DELETE /runners/1
  # DELETE /ruuners/1.json
  def destroy
      @runner = Runner.find(params[:id])
      @runner.destroy
      
      respond_to do |format|
      format.html { redirect_to(runners_path, :notice => 'Page was successfully deleted.')}
      format.json { head :no_content }
    end
  end

   # POST /runners
  # POST /runners.json
    def create
      #raise an exception to see the hash values
      #raise params.inspect
     @runner = Runner.new(params[:runner])
     
     respond_to do |format|
      if @runner.save
        format.html { redirect_to(runners_path, :notice => 'Page was successfully created.') }
      else
        format.html { render :action => "new" }
      end
    end
  end

  def update
     @runner = Runner.find(params[:id])
     respond_to do |format|
      if @runner.update_attributes(params[:runner])
        format.html { redirect_to(runners_path, :notice => 'Page was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

end
