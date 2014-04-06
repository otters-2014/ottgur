require 'spec_helper'

describe FavoritesController do

  before(:each) do
    request.env["HTTP_REFERER"] = "where_i_came_from"
  end

  let(:user) { User.new(:id=>3)}
  let(:favorite) { Favorite.new }

  describe "#create" do
    it "should create or find a favorite for an associated user and photo" do
      Favorite.should_receive(:find_or_create_by).with(params).and_return(favorite)
      # Favorite.should_receive(:find_or_create_by).with({user.id => "3"}).and_return(favorite)
      post :create, {image_id: "2"}
    end
    # it "should create or find a favorite for an associated user" do
    #   # Favorite.should_receive(:find_or_create_by).with(params).and_return(favorite)
    #   Favorite.should_receive(:find_or_create_by).with(user.id).and_return(favorite)
    #   post :create, params
    # end
  end
    # describe "#index" do
    #   it "should return a given users favorites" do
    #   User.should_receive(:find)
    #   post(:index, params)
    # end
  # end
end
