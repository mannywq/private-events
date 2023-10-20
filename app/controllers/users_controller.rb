class UsersController < ApplicationController

  def show

  if user_logged_in?

    @user = User.find(params[:id])

    render

  end
end
