class UsersController < ApplicationController
  before_action :correct_user, only: [:edit, :update]

  def cansel
  end

  def create
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to roots
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
  end

  def show
    @user = User.find(params[:id])
    @q = Product.ransack(params[:q])
    @products = @q.result(distinct: true)
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to root_path
  end

  private
  def correct_user
    user = User.find(params[:id])
    if current_user != user
      redirect_to root_path
    end
  end

end
