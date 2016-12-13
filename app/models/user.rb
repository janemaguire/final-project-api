class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create

  has_many :props

  mount_uploader :image, ImageUploader

  geocoded_by :address
  after_validation :geocode

end
