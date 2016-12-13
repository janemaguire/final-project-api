class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :address, :phone, :image, :email, :latitude, :longitude

  has_many :props
end
