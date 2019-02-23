class ProductsController < ApplicationController

  def index
  end

# def index
#   @q = Person.ransack(params[:q])
#   @people = @q.result(distinct: true)
# end

  def index
  	@q = Product.ransack(params[:q])
  	@products = @q.result(distinct: true)
  end


  def show
  end

  def toppage
  end

end
