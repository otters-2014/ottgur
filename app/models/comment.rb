class Comment < ActiveRecord::Base
  has_many :replies, class_name: "Comment",
                     foreign_key: :comment_id
  belongs_to :user
  belongs_to :image
end
