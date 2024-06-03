class Profile < ApplicationRecord
  belongs_to :user

  validates :goal, presence: true

end
