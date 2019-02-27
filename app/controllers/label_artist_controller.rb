 class LabelsController < ApplicationController
   def index
   end


   def new
     @label = Label.new
     @lebel.artists.new
   end

   def create
     label = Label.new(label_params)
     label.save
     redirect_to admins_product_path
   end


   def show
     @lebel = Lebel.find(params[:id])
   end

   def edit
   end

   private
   def label_params
   # params.require(:モデル名).permit(:カラム名1, :カラム名2, ...)
     params.require(:lebel).permit(:lebel_name, artist_attributes: [:id, :artist_name, :label_id])
   end
 end
