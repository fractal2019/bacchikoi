class AdminsProductsController < ApplicationController
  def index
  end

  def new
  	@product = Product.new
    @disc = @product.discs.build
    @song = @disc.songs.build
  end

  def create
  	product = Product.new(product_params)
  	label.save
  	redirect_to admins_product_path
  end


  def show
  	@product = Product.find(params[:id])
  end

  def edit
  end

  private
  def product_params
  # params.require(:モデル名).permit(:カラム名1, :カラム名2, ...)
  	params.require(:product).permit(:product_name, :type_name, :price, :number_of_stock, :artist_id, :jacket_image_id, :product_introduction, :staff_comment, disc_attributes: [:id, :disc_order, :disc_name, :product_id, song_attributes: [:id, :song_name, :disc_id]])
  end

end
