class Post < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  has_one_attached :video
  validates :title, presence: true
  validates :workout_details, presence: true
end
