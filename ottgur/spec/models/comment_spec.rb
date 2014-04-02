require 'spec_helper'

describe Comment do
  let(:comment) { Comment.create(:text => "Here is a sample comment.", :user_id => "5", :image_id => "17") }

  it "should have some text" do
    expect(comment.text).to eq("Here is a sample comment.")
  end
  it "should have an associated user_id" do
    expect(comment.user_id).to eq(5)
  end
  it "should have an associated image_id" do
    expect(comment.image_id).to eq(17)
  end
  it "should not have a comment_id by default" do
    expect(comment.comment_id).to be_nil
  end
end
