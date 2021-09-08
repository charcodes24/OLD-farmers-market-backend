class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :is_vendor
  has_many :items
end
