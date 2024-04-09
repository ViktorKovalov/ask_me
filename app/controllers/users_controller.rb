class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    user_params = params[:user].permit(:name, :nickname, :email)

    User.create(user_params)

    redirect_to root_path, notice: 'User was successfully created.'
  end
end
