class Prop < ApplicationRecord
  belongs_to :user, optional: true
  has_and_belongs_to_many :categories

  mount_uploader :image, ImageUploader
end
