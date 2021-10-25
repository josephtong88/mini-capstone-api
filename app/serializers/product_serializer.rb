class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :supplier, :image_urls
end
