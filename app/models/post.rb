class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  mount_uploader :picture, PictureUploader
  validates  :title, presence: true
  validates  :body, presence: true
end
