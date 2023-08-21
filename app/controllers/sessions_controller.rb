class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      flash[:success] = "Signed in successfully!"
      sign_in user
      redirect_to root_path
    else
      flash.now[:error] = "Email or password is invalid!"
      render :new
    end
  end

  def destroy
  end
end