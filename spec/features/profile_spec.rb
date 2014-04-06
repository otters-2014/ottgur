require 'spec_helper'
include Warden::Test::Helpers
Warden.test_mode!

feature "Nav bar options change if user is signed in" do
  context "Signed in user" do
    user = FactoryGirl.build(:user)
    before(:each) { login_as(user, :scope => :user) }

    it "Signed in user should see profile link" do
      visit "/"
      expect(page).to have_content("Profile")
    end

    it "Signed in user should see sign out link" do
      visit "/"
      expect(page).to have_content("Sign Out")
    end

    it "Signed in user should not see a sign in link" do
      visit "/"
      expect(page).to_not have_content("Sign In")
    end

  end
end

feature "Profile Page" do
  context "Signed in user" do
    user = FactoryGirl.build(:user)
    before(:each) { login_as(user, :scope => :user) }

    it "User should see a custom user menu" do
      visit user_path(user.id)
      expect(page).to have_content("Favorited Photos")
      expect(page).to have_content("Comments")
      expect(page).to have_content("Uploads")
    end

    # it "User should see a link to their uploads" do
    #   visit user_path(user.id)
    # end

    # it "User should see a link to their comments" do
    #   visit user_path(user.id)
    # end

  end
end

    #   params = {:id => 1}
    #   visit "/"
    #   click_link "Profile"
    #   expect(page).to  have_content("Favorites")
    # end
