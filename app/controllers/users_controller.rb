class UsersController < ApplicationController
  before_action :logged_in?, only: [:hidden]

  # def index
  #   if user_signed_in?
  #     @user = User.find(params[:id])
  #   else
  #     render_to root_path
  #   end
  # end

  # def sign_in
  #   @user = User.new
  #   render_to root_path
  # end

  # def show
  # end

end
