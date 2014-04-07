require 'spec_helper'


  describe CommentsController do

    before(:each) do
      request.env["HTTP_REFERER"] = "where_i_came_from"
    end


    describe "#create" do
      let(:params) { {image_id: "1", comment: {text: "hello", comment_id: "2"} } }

      it "should create a new comment with user's comment text" do
        expect{Comment.create!(:text => "test comment")}.to change {Comment.count}.by(1)
      end


      # it "should recieve the correct params" do
      #   controller.stub :current_user => @user
      #   @user = double('user', id: "2")
      #   Comment.should_receive(:create!).with({:text=>"hello", :user_id=>"2", :image_id=>"1", :comment_id=>"2"})
      #   post :create, params
      #   response.should redirect_to "where_i_came_from"
      # end


    let(:params) { {user_id: "1"} }
    let(:user) {User.new}
    let(:comment_array) { [Comment.new(text: "ehllo"), Comment.new(text: "SOMETHING ELSE")] }
    let(:reverse_array) { [Comment.new(text: "ehllo"), Comment.new(text: "SOMETHING ELSE")].reverse }
    describe "#index" do
      it "should return and reverse array of comment objects" do
        controller.stub(:comments) {[comment_array.reverse]}
        User.should_receive(:find).with("1").and_return(user)
        user.should_receive(:comments).and_return(comment_array)
        comment_array.should_receive(:reverse).and_return(reverse_array)
        post :index, params
        assigns(:comments).should eq reverse_array
      end
    end
  end
end
