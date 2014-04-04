class UsersController < ApplicationController

  def index

      if user_signed_in?
        @user = current_user
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
    user_path
  end

end
