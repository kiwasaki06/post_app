class Post < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :liking_users, through: :likes, source: :user
  belongs_to :user, optional: true
  mount_uploader :picture, PictureUploader
  validates  :title, presence: true
  validates  :body, presence: true
  # validates :user_id, presence: true
end
