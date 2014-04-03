class CommentsController < ApplicationController

  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.create!(:text => params[:comment][:text])
    redirect_to :back
  end
end
