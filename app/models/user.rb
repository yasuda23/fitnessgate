class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :username, presence: true, uniqueness: true

  has_many :posts
  has_many :comments

  has_one :profile, dependent: :destroy

  after_create :create_profile

  private

  def create_profile
    Profile.create(user: self)
  end

end
