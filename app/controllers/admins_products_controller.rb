class AdminsProductsController < ApplicationController

  def new
  	@product = Product.new
    @disc = @product.discs.build
    @song = @disc.songs.build
  end

  def create
  	product = Product.new(product_params)
  	label.save
  	render :show
  end


  def show
  	@product = Product.find(params[:id])
    @discs = @product.discs
    @artists = 0
    @discs.each do |disc|
      disc.songs.each do |song|
      @artists.push(song.songs_artists_id)
      end
    end
  end

  def edit
  end

  private
  def product_params
  # params.require(:モデル名).permit(:カラム名1, :カラム名2, ...)
  	params.require(:product).permit(:product_name, :type_name, :price, :number_of_stock, :artist_id, :jacket_image_id, :product_introduction, :staff_comment, disc_attributes: [:id, :disc_order, :disc_name, :product_id, song_attributes: [:id, :song_name1, :song_name2, :song_name3, :song_name4, :song_name5, :song_name6, :song_name7, :song_name8, :song_name9, :song_name10, :song_name11, :song_name12, :song_name13, :song_name14, :song_name15, :song_name16, :song_name17, :song_name18, :song_name19, :song_name20, :disc_id]])
  end

end
