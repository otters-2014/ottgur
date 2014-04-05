require 'spec_helper'
require 'capybara'

# feature "the homepage" do
#   context "a user is NOT signed in" do
#     it "see the logged out message" do
#       visit('/')
#       expect(page).to  have_content("Sign In")
#     end
#   end


describe 'home page' do
  context 'when user is logged in' do
    it "nav bar has an upload button" do
      visit '/'
      expect(page).to have_content('Upload')
    end
  end


  # it "must render index view" do
  #   visit '/'
  #   expect(response).to render_template("index")
  # end

  context "Logo Button" do
    it "will take me to the home page" do
      visit ('/')
      click_link("Ottgur")
      current_path.should eq root_path
    end
  end

  context "Ian and Marco only get better with age" do
      it "Yep. They most certainly do" do
        expect("duh" == "duh").to eq true
      end
  end



end


  # feature "Sign up" do
  #   it "must render sign up" do
  #     visit '/'
  #     expect(response).to render_template("devise/registrations/_form_new")
  #   end
  # end

  # feature "Sign in" do
  #   it "must render sign up" do
  #     get 'sign_up'
  #     expect(response).to render_template("devise/registrations/_form_new")
  #   end
  # end

  #   feature "Sign out" do
  #   it "must render sign up" do
  #     get 'sign_up'
  #     expect(response).to render_template("devise/registrations/_form_new")
  #   end
  # end
