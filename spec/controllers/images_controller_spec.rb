require 'spec_helper'

# describe ImagesController do
#   describe 'POST #create' do
#     before do
#       @image = Image.new
#       @image_params = {path: 'my_path'}
#       Image.should_receive(:new).and_return(@image)
#       Image.any_instance.should_receive(:submission=).with(@image_params[:path])
#     end

#     it 'increases image count by 1' do
#       expect { post(:create, @image_params) }.to change { Image.count }.by(1)
#     end

#     it 'redirects to root' do
#       post(:create, @image_params)
#       expect(response).to redirect_to root_path
#     end
#   end

#   describe 'GET #show' do
#     before do
#       @user = double('user', id: 1)
#       request.env['warden'].stub :authenticate! => @user
#       controller.stub :current_user => @user

#       @image = double('image', id: 1)
#       @image_id = '1'
#       Image.should_receive(:find).with(@image_id).and_return(@image)

#       @comments = [double('comment',image_id: 1)]
#       Comment.should_receive(:where).with(image_id: @image.id).and_return(@comments)
#     end

#     it "assigns @user to current_user" do
#       get(:show, id: @image_id)
#       expect(assigns(:user)).to eq @user
#     end

#     it "assigns @image" do
#       get(:show, id: @image_id)
#       expect(assigns(:image)).to eq @image
#     end

#     it "assigns @comments" do
#       get(:show, id: @image_id)
#       expect(assigns(:comments)).to eq @comments
#     end

#     it 'redirects to show page' do
#       get(:show, id: @image_id)
#       expect(response).to render_template ("show")
#     end
#   end

#   describe 'DELETE #destroy'
#   describe 'GET #index'
# end
