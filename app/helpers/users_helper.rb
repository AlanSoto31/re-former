# frozen_string_literal: true

module UsersHelper
  def user_params
    params.require(:user).permit(:user_name, :email, :password)
  end
end
