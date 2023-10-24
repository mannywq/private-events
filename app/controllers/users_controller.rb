class UsersController < ApplicationController
  before_action :authenticate_user!
  def show
    if user_signed_in?
      @user = User.find(params[:id])

    else

      redirect_to new_user_session_path

    end
  end
end
