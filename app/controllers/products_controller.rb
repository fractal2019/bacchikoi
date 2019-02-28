class ProductsController < ApplicationController

  def new
    @products = Product.new
  end

  def index
    @q = Product.ransack(params[:q])
  	@products = @q.result(distinct: true)
    @products = Product.all
  end


  def show
    @product = Product.find(params[:id])
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

end
