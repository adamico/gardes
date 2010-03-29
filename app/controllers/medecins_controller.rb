class MedecinsController < ApplicationController
  def index
    @medecins = Medecin.all
  end
  
  def show
    @medecin = Medecin.find(params[:id])
  end
  
  def new
    @medecin = Medecin.new
  end
  
  def create
    @medecin = Medecin.new(params[:medecin])
    if @medecin.save
      flash[:notice] = "Successfully created medecin."
      redirect_to @medecin
    else
      render :action => 'new'
    end
  end
  
  def edit
    @medecin = Medecin.find(params[:id])
  end
  
  def update
    @medecin = Medecin.find(params[:id])
    if @medecin.update_attributes(params[:medecin])
      flash[:notice] = "Successfully updated medecin."
      redirect_to @medecin
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @medecin = Medecin.find(params[:id])
    @medecin.destroy
    flash[:notice] = "Successfully destroyed medecin."
    redirect_to medecins_url
  end
end
