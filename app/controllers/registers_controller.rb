class RegistersController < ApplicationController
  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Sign up successfully!"
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def user_params
        params.require(:user).permit(:email, :password, :password_confirmation, :name)
    end
end
