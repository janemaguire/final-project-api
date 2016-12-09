class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :address, :phone, :image, :email

  has_many :props
end
