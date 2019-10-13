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

  def edit
    @raeet = Raeet.find(params[:id])
  end

  def update
    @raeet = Raeet.find(params[:id])
    if @raeet.update(raeet_params)
      redirect_to raeets_path, notice: "Raeetしました！"
    else
      render :edit
    end
  end

  private

  def raeet_params
    params.require(:raeet).permit(:content)
  end
end
