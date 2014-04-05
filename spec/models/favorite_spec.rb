require 'spec_helper'

describe Favorite do
  it { should belong_to(:user) }
  it { should belong_to(:image) }

  describe "#get_image" do
    let(:our_favorite) {Favorite.new(:image_id => 3)}

    it "should return it's associated image object" do
      Image.should_receive(:find).with(3)
      our_favorite.get_image
    end
  end

end
