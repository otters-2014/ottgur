class UsersController < ApplicationController

  def index

      if user_signed_in?
        @user = User.find(params[:id])
      else
        redirect_to '/'
      end
  end

  def show
    redirect_to root_path
  end

end
