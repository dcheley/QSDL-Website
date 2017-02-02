class UsersController < ApplicationController
  def edit
    @user = User.find(user_params)
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
