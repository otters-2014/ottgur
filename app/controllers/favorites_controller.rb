class FavoritesController < ApplicationController

  def create
    favorite = Favorite.find_or_create_by(user_id: current_user.id, image_id: params[:image_id])
    redirect_to :back
  end

end
