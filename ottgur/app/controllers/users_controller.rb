class UsersController < ApplicationController

  def index

      if user_signed_in?
        @user = User.find(params[:id])
      else
        render_to root_path
      end
  end

  def sign_in
      @user = User.new
      # render partial: "devise/sessions/form"
      render_to root_path
  end

  def show
    redirect_to root_path
  end

end
