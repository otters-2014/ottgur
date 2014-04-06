require 'spec_helper'

describe FavoritesController do

  before(:each) do
    request.env["HTTP_REFERER"] = "where_i_came_from"
  end

  describe "#create" do
  let(:favorite) { Favorite.new }
  let(:params) { {image_id: "2"} }
    it "should create or find a favorite for an associated photo" do
      Favorite.should_receive(:find_or_create_by).with(params).and_return(favorite)
      post :create, params
    end

  end

  describe "#index" do
    let(:user) { User.new}
    let(:favorites) { [Favorite.new, Favorite.new]}
    let(:params) { {user_id: "2"} }

    it "should return a user's favorites" do
      User.should_receive(:find).with(params[:user_id]).and_return(user)
      user.should_receive(:favorites)
      post :index, params
    end
  end
end
