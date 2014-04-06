class VotesController < ApplicationController

  def create
  	@image = Image.find(params[:image_id])
    vote = Vote.find_or_create_by(:image_id => params[:image_id], :user_id => current_user.id)
    vote.update(:direction => params[:direction])
    render partial: "vote_count"
  end

  def self.score(image)
    @num_positive_votes = image.votes.where(direction: true).count - image.votes.where(direction: false).count
  end

end
