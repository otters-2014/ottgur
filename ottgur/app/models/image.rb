class Image < ActiveRecord::Base
  belongs_to :uploader, class_name: "User"
  has_many :votes
  has_many :favorites
  has_many :comments
end
