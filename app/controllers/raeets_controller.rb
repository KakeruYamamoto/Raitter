class RaeetsController < ApplicationController
  before_action :set_raeet, only: [ :show, :edit, :update, :destroy]

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
  end

  def edit
  end

  def update
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

  def set_raeet
    @raeet = Raeet.find(params[:id])
  end
end
