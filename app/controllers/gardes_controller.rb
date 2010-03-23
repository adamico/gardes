class GardesController < ApplicationController
  def index
    @gardes = Garde.all
  end
  
  def show
    @garde = Garde.find(params[:id])
  end
  
  def new
    @garde = Garde.new
  end
  
  def create
    @garde = Garde.new(params[:garde])
    if @garde.save
      flash[:notice] = "Successfully created garde."
      redirect_to @garde
    else
      render :action => 'new'
    end
  end
  
  def edit
    @garde = Garde.find(params[:id])
  end
  
  def update
    @garde = Garde.find(params[:id])
    if @garde.update_attributes(params[:garde])
      flash[:notice] = "Successfully updated garde."
      redirect_to @garde
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @garde = Garde.find(params[:id])
    @garde.destroy
    flash[:notice] = "Successfully destroyed garde."
    redirect_to gardes_url
  end
end
