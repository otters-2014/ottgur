class ImagesController < ApplicationController
  before_action :get_image

  def create
    @image = Image.new
    @image.submission = params[:path]
    @image.save!
    redirect_to root_path
  end

  def destroy
  end

  def show
  end

  def index
  end

  private

   def post_params
    params.require(:image).permit(:file)
  end

  def get_image
    @image ||= Image.find(params[:id]) unless params[:id].nil?
    @images = Image.all
  end
end
