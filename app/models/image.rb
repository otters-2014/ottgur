class Image < ActiveRecord::Base
  belongs_to :uploader, class_name: "User", foreign_key: :user_id
  has_many :votes
  has_many :favorites
  has_many :comments

  mount_uploader :submission, SubmissionUploader
end
