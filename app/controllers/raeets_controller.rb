class RaeetsController < ApplicationController

  def index
  end

  def new
    @raeet = Raeet.new
  end
end
