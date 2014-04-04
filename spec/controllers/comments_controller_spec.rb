require 'spec_helper'

describe CommentsController do
  let(:image) { Image.create(id: 1) }

  describe 'POST #create' do
    it 'creates a new comment for an image' do
      Image.should_receive(:find).with('1').and_return(image)

      request.env["HTTP_REFERER"] = "http://previous_page"

      user = double('user', id: 1)
      request.env['warden'].stub :authenticate! => user
      controller.stub :current_user => user

      create_params = {image_id: '1', comment: {text: 'here is text'}}
      post(:create, create_params)
      expect(response).to redirect_to :back
    end
  end

  it "reloads the page after submitting a comment" do
    # # create an image
    # go to the image show page
    # fill in comment
    # expect response to be image show page
  end

  it "shows the comment text after the comment is submitted" do
    # create an image
    # go to the image show page
    # fill in comment
    # return to show page
    # check page for comment text
  end

  it "shows the user email of the currently signed-in user" do
    # create an image
    # go to the image show page
    # fill in comment
    # submit the comment
    # return to show page
    # check page for current user email
  end
end
