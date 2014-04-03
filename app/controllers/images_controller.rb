class ImagesController < ApplicationController
  def create

    @image = Image.new
    @image.submission = params[:path]
    @image.save!

  end

  def delete
  end

  def show
    @image = Image.find(params[:id])
  end

  def index
  end
end
