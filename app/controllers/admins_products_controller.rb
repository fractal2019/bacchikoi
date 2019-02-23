class AdminsProductsController < ApplicationController
  def index
  end

  def new
  	@admins_product = Product.new
  end

  def create
  	admins_product = Product.new(product_params)
  	admins_product.save
  end


  def show
  	@poduct = Poduct.find(params[:id])
  end

  def edit
  end

  private
  def product_params
  # params.require(:モデル名).permit(:カラム名1, :カラム名2, ...)
  	params.require(:product).permit(:artist_name, :disc_name, :jacket_image_id, :price, :lebel_name, :type_name, :number_of_stock, :product_introduction, :staff_coment, :song_name, :genre_name)
  end

end
