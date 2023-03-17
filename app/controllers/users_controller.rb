class UsersController < ApplicationController

  def my_friends
    @friends = current_user.friends
  end

  def show
    @user = User.find(params[:id])
  end

end
