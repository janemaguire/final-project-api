class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :props
  has_many :props
end
