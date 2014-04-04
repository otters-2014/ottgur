require 'spec_helper'

feature 'User browsing the website' do
  context 'on homepage' do

    xit 'can see an upload form' do
      page.driver.browser.authorize 'geek', 'jock'
      visit '/'
      click_link 'Upload'
      # within('.modal-content') do
      #   page.should have_content('Image Upload') # async
      # end
      expect(page).to have_content 'Image Upload'
    end

    xit 'can upload a photo' do
      visit '/'
      expect {
        click_link("Upload")
        sleep(5)
        attach_file('path', 'pic.jpg')
        fill_in('caption', with: 'some text about the image')
        # save_and_open_page
        page.find("input[value='Upload!']").click
      }.to change(Image, :count).by(1)
      # expect(page).to have_content 'Upload Complete!'
        # page.should have_content('Image Upload') # async

    end
  end

end
