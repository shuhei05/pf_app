class UsersController < ApplicationController
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :postal_code, :phone_number)
  end
end
