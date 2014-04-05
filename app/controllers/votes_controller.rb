class VotesController < ApplicationController

  def create
    vote = Vote.find_or_create_by(:image_id => params[:image_id], :user_id => current_user.id)
    vote.update(:direction => params[:direction])
    redirect_to :back
  end

  def self.score(image)
    @num_positive_votes = image.votes.where(direction: true).count - image.votes.where(direction: false).count
  end

end
