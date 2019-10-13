class RaeetsController < ApplicationController

  def index
    @raeets =  Raeet.all
  end

  def new
    @raeet = Raeet.new
  end

  def create
    @raeet = Raeet.new(raeet_params)
    if @raeet.save
      redirect_to raeets_path, notice:"Raeetしました！"
    else
      render :new
    end
  end

  def show
    @raeet = Raeet.find(params[:id])
  end

  private

  def raeet_params
    params.require(:raeet).permit(:content)
  end
end
