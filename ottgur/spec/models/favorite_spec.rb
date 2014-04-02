require 'spec_helper'

describe Favorite do
  let(:favorite) { Favorite.create(:user_id => "5", :image_id => "17") }

  it "should have an associated user_id" do
    expect(favorite.user_id).to eq(5)
  end
  it "should have an associated image_id" do
    expect(favorite.image_id).to eq(17)
  end
end
