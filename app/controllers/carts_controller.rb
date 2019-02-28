class CartsController < ApplicationController
  # before_action :setup_cart_content!, only: [:add_content, :update_content, :delete_content]

  def show
    if session[:user_id].nil?
    @cart = Cart.find_by(params[:id])
    @cart_contents = @cart.cart_contents
  else
    session[:user_id] = params[:user_id]
  end
end

  # 商品一覧画面から、「商品購入」を押した時のアクション
  def add_content
    if @cart_content.blank?
      @cart_content = current_cart.cart_contents.build(product_id: params[:product_id])
    end

    @cart_content.quantity += params[:item_quantity].to_i
    @cart_content.save
    redirect_to current_cart
  end

  # カート詳細画面から、「更新」を押した時のアクション
  def update_content
    @cart_content.update(item_quantity: params[:item_quantity].to_i)
    redirect_to current_cart
  end

# カート詳細画面から、「削除」を押した時のアクション
  def delete_content
    @cart_content.destroy
    redirect_to current_cart
  end

  private

  # def setup_cart_content!
  #   @cart_content = current_cart.cart_contents.find_by(product_id: params[:product_id])
  # end
end
