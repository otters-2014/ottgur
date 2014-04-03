class ImagesController < ApplicationController
  def create
    image = Image.new
    image.submission = params[:path]
    # binding.pry
    image.save!
  end

  def delete
  end

  def show
  end

  def index
  end
end
