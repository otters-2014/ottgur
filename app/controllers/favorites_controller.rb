class FavoritesController < ApplicationController

  def create
    favorite = Favorite.find_or_create_by(image_id: params[:image_id], user_id: current_user.id)
    render git
  end

  def index
    @favorites = User.find(params[:user_id]).favorites
  end

end
