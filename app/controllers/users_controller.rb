class UsersController < ApplicationController

  def index
    @user
  end

  def show
  end

  def new
  end

  def create
  end

  private
    def user_params
      params.require(:user).permit(:name, :email, :password, :password_confirmation)
    end

end
