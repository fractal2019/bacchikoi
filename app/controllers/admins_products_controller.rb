class AdminsProductsController < ApplicationController
  def index
  end

  def new
  end

  def show
  	@poduct = Poduct.find(params[:id])
  end

  def edit
  end
end
