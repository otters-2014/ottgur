require 'spec_helper'

describe Vote do
  let(:vote) { Vote.create(:direction => false, :user_id => "5", :image_id => "17") }

  it "should have a direction (boolean value representing up vote or down vote)" do
    expect(vote.direction).to be_false
  end
  it "should have an associated user_id" do
    expect(vote.user_id).to eq(5)
  end
  it "should have an associated image_id" do
    expect(vote.image_id).to eq(17)
  end
end
