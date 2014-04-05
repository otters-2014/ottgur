class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :image


  def get_image
    image = Image.find(self.image_id)
  end
end
