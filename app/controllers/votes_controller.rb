class VotesController < ApplicationController


  def create
    # binding.pry
    Vote.create(:direction => params[:vote][:direction], :image_id => params[:image_id], :user_id => current_user.id)
    redirect_to :back
  end

end
