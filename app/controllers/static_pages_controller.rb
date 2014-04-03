class StaticPagesController < ApplicationController
  before_action :logged_in?, only: [:hidden]

  def index
    @images = Image.all
  end

  def hidden
    redirect_to "http://google.com"
  end

    def sign_in
      @user = User.new
      # render partial: "devise/sessions/form"
      render_to root_path
  end

    def create
      image = Image.new
      image.submission = params[:path]
      # binding.pry
      image.save!
  end



  private

  def logged_in?
    if !user_signed_in?
    	flash[:alert] = "You cant view this"
    	redirect_to root_path
    end
  end
end
