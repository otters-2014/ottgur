require 'spec_helper'

feature 'User browsing the website' do
  context 'on homepage' do

    it 'can see an upload form' do
      visit '/'
      expect(page).to have_content 'Upload Your Image!'
    end

    it 'can upload a photo' do
      visit '/'

      expect {
        attach_file('path', 'pic.jpg')
        fill_in('caption', with: 'some text about the image')
        click_button('Upload!')
      }.to change(Image, :count).by(1)

      expect(page).to have_content 'Upload Complete!'
    end
  end

end
