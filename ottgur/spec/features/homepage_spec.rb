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


  feature "Sign up" do
    it "must render sign up" do
      get 'sign_up'
      expect(response).to render_template("devise/registrations/_form_new")
    end
  end

  feature "Sign in" do
    it "must render sign up" do
      get 'sign_up'
      expect(response).to render_template("devise/registrations/_form_new")
    end
  end

    feature "Sign out" do
    it "must render sign up" do
      get 'sign_up'
      expect(response).to render_template("devise/registrations/_form_new")
    end
  end
