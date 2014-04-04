class ImagesController < ApplicationController
  before_action :get_image

  def create
    @image = Image.new
    @image.submission = params[:path]
    @image.save!
    redirect_to root_path
  end

  def delete
  end

  def show
    @user = current_user
    @image = Image.find(params[:id])
    @comments = Comment.where(image_id: @image.id)
  end

  def index
    @images = Image.all
  end

  private

   def post_params
    params.require(:image).permit(:file)
  end

  def get_image
    @post ||= Post.find(params[:id]) unless params[:id].nil?
    @posts = Post.all
  end
end
