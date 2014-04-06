require 'spec_helper'

describe Image do
  it { should belong_to(:uploader).class_name('User').with_foreign_key(:user_id) }
  it { should have_many(:votes) }
  it { should have_many(:favorites) }
  it { should have_many(:comments) }

  let(:image) { Image.create(:filename => "otter.jpg", :thumb_filename => "small_otter.jpg", :user_id => "5", :caption => "Here is my cute pet otter.")}

  it "should have a filename" do
    expect(image.filename).to eq("otter.jpg")
  end
  it "should have a thumb_filename" do
    expect(image.thumb_filename).to eq("small_otter.jpg")
  end
  it "should have a user_id" do
    expect(image.user_id).to eq(5)
  end
  it "should have a caption" do
    expect(image.caption).to eq("Here is my cute pet otter.")
  end
end
