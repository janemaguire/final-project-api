class PropSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :description, :categories, :available, :category_ids
  has_one :user
  has_many :categories
end
