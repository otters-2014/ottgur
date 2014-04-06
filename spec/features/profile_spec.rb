require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

feature "Profile page" do
  context "favorited photos" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)

    it "Signed in user should see profile link" do
      visit "/"
      # save_and_open_page
      expect(page).to have_content("Profile")
      expect(page).to_not have_content("Sign Up")
    end
    #   params = {:id => 1}
    #   visit "/"
    #   click_link "Profile"
    #   expect(page).to  have_content("Favorites")
    # end
  end


  # context "Logo Button" do
  #   it "will take me to the home page" do
  #     # visit ('/')
  #     # click_link("Ottgur")
  #     # current_path.should eq root_path
  #   end
  # end


end
