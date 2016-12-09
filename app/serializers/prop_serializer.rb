class PropSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :category, :available
  has_one :user
end
