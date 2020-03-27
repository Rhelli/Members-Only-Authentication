class UsersController < ApplicationController
  before_action: 
  def index
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
