class LabsController < ApplicationController

  def index
    @labs = Lab.all
    render :json => @labs
  end

  def show
    @lab = Lab.find(params[:id])
    render :json => @lab
  end
end
