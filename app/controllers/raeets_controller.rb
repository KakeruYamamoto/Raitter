class RaeetsController < ApplicationController

  def index
    @raeets =  Raeet.all
  end

  def new
    @raeet = Raeet.new
  end

  def create
    Raeet.create(raeet_params)
    redirect_to new_raeet_path
  end

  def show
    @raeet = Raeet.find(params[:id])
  end
  
  private

  def raeet_params
    params.require(:raeet).permit(:content)
  end
end
