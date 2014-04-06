class ImagesController < ApplicationController
  before_action :get_image

  def create
    @image = Image.new
    @image.submission = params[:path]
    @image.user_id = current_user.id
    @image.caption = params[:caption]
    @image.save!
    redirect_to root_path
  end

  def destroy
  end

  def show
  end

  def index
    if params[:user_id]
      @images = User.find(params[:user_id]).images
    else
      @images = Image.all
    end
  end

  private

   def post_params
    params.require(:image).permit(:file)
  end

  def get_image
    @image ||= Image.find(params[:id]) unless params[:id].nil?
  end
end
