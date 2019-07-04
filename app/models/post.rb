class Post < ApplicationRecord
  mount_uploader :picture, PictureUploader
  validates  :title, presence: true
  validates  :body, presence: true
end
