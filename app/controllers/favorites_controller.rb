class FavoritesController < ApplicationController

  def index
    @user = current_user

    render "users/favorites"
  end

  def create
    @user = current_user
    @image = Image.find(params[:id])
    favorite = Favorite.find_or_create_by(user_id: @user.id, image_id: params[:id])

    redirect_to image_path(@image)
  end

  def destroy
    @user = current_user

  end
end
