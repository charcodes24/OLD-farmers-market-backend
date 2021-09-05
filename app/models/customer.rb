class Customer < ApplicationRecord
    has_secure_password
    has_many :orders
    has_many :items, through: :order_items

    validates :username, length: { maximum: 10 }
    validates :username, presence: true 
    validates :username, uniqueness: true 

end
