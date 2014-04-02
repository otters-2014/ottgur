class StaticPagesController < ApplicationController
  before_action :logged_in?, only: [:hidden]

  def index

  end

  def hidden

  end

  private

  def logged_in?
    if !user_signed_in?
    	flash[:alert] = "You cant view this"
    	redirect_to root_path
    end
  end
end