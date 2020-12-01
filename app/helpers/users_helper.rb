module UsersHelper
  attr_accessor :user
  attr_writer :clas1, :clas2, :clas3
  def user_params
    params.require(:user).permit(:user_name, :email, :password)
  end

  def edit_form_field_errors
    return unless @user.errors.any?

    @user.errors.full_messages.each do |msg|
      if msg.include?('User name')
        @clas1 = 'error'
      elsif msg.include?('Email')
        @clas2 = 'error'
      elsif msg.include?('Password')
        @clas3 = 'error'
      end
    end
  end
end
