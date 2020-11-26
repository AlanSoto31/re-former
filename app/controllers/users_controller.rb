class UsersController < ApplicationController

  def new 
   @user = User.new
  end

  def create
    #@user = User.new(user_name: params[:user_name], email: params[:email], password: params[:password])
    @user = User.new(whitelist)
  
    if @user.save
      redirect_to new_users_path
    else
      render :new
    end
  end

  private

  def whitelist
    params.require(:user).permit(:user_name, :email, :password)
  end
  

end
