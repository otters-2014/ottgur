class ImagesController < ApplicationController
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
  end

  def favorite
    @user = current_user
    favorite = Favorite.create(user_id: @user.id, image_id: params[:id])
  end
end
