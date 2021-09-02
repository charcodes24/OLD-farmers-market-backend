class OrderSerializer < ActiveModel::Serializer
  attributes :id, :subtotal
  belongs_to :customer
  has_many :items
end
