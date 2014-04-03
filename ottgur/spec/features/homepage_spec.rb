require 'spec_helper'
require 'capybara'

feature "the homepage" do
  context "a user is NOT signed in" do
    it "see the logged out message" do
      visit('/')
      expect(page).to  have_content("You are not signed in")
    end
  end

  context "Logo Button" do
    it "will take me to the home page" do
      vist ('/')
      click_link("logo")
    end
  end


end
