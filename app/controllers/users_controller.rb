class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to root_url, notice: "Settings updated!"
    else
      render :edit
    end
  end

  def send_email
    name = params[:name]
    email = params[:email]
    body = params[:body]
    UserMailer.contact_email(name, email, body).deliver_later
    redirect_to root_url, notice: 'Email sent!'
  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end
