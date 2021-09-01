class Item < ApplicationRecord
  belongs_to :vendor
  has_many :orders 
  
end
