class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  belongs_to :user, optional: true
  mount_uploader :picture, PictureUploader
  validates  :title, presence: true
  validates  :body, presence: true
  # validates :user_id, presence: true
end
