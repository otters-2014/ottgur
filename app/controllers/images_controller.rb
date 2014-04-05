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
    # @user = current_user
    @vote = Vote.new
    @image = Image.find(params[:id])
    @comments = Comment.where(image_id: @image.id)
    @num_positive_votes = @image.votes.where(direction: true).count - @image.votes.where(direction: false).count
  end

  def index
    @images = Image.all
  end

  private

   def post_params
    params.require(:image).permit(:file)
  end

  def get_image
    @image ||= Image.find(params[:id]) unless params[:id].nil?
    @image = Image.all
  end

#other group forgot to change variable when they copied and pasted it in.
  # def get_image
  #   @post ||= Post.find(params[:id]) unless params[:id].nil?
  #   @posts = Post.all
  # end

  def favorite
    @user = current_user
    favorite = Favorite.create(user_id: @user.id, image_id: params[:id])
  end
end
