class VendorSerializer < ActiveModel::Serializer
  attributes :id, :name, :description
  has_many :items 

end
