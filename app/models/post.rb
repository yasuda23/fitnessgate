class Post < ApplicationRecord
  validates :title, presence: true
  validates :workout_details, presence: true
  
  has_one_attached :image
  has_many :comments , dependent: :destroy
  belongs_to :user
end
