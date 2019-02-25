class ProductsController < ApplicationController

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

  def new
    @oroduct = Product.new
    @disc = @product.tasks.build
    @song = @disc.songs.build
  end

  private
    def product_params
        params.require(:product).permit(:song_name, discs_attributes: [:id,])
    end

end
