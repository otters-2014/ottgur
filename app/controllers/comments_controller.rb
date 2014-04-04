class CommentsController < ApplicationController

  def create
    @image = Image.find(params[:image_id])
    @comment = @image.comments.create!(:text => params[:comment][:text],
                                       :user_id => current_user.id)
    redirect_to :back
  end
end
