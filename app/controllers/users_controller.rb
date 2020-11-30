class UsersController < ApplicationController
  include UsersHelper
  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    # @user = User.new(user_name: params[:user_name], email: params[:email], password: params[:password])
    @user = User.new(user_params)

    if @user.save
      redirect_to new_user_path
    else
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:success] = 'Object was successfully updated'
      redirect_to edit_user_path
    else
      flash[:error] = 'Something went wrong'
      render 'edit'
    end
  end
end
