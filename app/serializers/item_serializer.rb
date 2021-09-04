class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :price 
  belongs_to :vendor
end
