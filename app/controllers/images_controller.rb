class ImagesController < ApplicationController
  def create
    image = Image.new
    image.submission = params[:path]
    # binding.pry
    image.save!
    redirect_to root_path
  end

  def delete
  end

  def show
    @image = Image.find(params[:id])
  end

  def index
  end
end
