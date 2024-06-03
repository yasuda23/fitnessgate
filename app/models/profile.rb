class Profile < ApplicationRecord
  belongs_to :user

  validates :goal, presence: true
  validates :username, presence: true

end
