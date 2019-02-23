class UsersController < ApplicationController
  def cansel
  end

  def create
  end

  def destroy
  end

  def edit
    @user = User.find(params[:id])
  end

  def new
  end

  def show
    @user = User.find(params[:id])
  end

  def update
  end
end
