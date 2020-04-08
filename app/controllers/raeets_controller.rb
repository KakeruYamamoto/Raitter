# frozen_string_literal: true

class RaeetsController < ApplicationController
  before_action :set_raeet, only: %i[show edit update destroy]

  def index
    @raeets = Raeet.order(created_at: :desc)
    @raeet = Raeet.new
  end

  def new
    @raeet = Raeet.new
  end

  def create
    @raeet = Raeet.new(raeet_params)
    if params[:back]
      render :new
    else
      if @raeet.save
        redirect_to raeets_path, notice: 'Raeetしました'
      else
        render :new
      end
    end
  end

  def show; end

  def edit; end

  def update
    if @raeet.update(raeet_params)
      redirect_to raeets_path, notice: 'ReRaeetしました'
    else
      render :edit
    end
  end

  def destroy
    @raeet.destroy
    redirect_to raeets_path, notice: 'Raeetを削除しました'
  end

  def confirm
    @raeet = Raeet.new(raeet_params)
    render :new if @raeet.invalid?
  end

  private

  def raeet_params
    params.require(:raeet).permit(:content)
  end

  def set_raeet
    @raeet = Raeet.find(params[:id])
  end
end
