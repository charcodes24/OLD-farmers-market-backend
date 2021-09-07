class Vendor < ApplicationRecord
    has_secure_password
    has_many :items 

    validates :username, length: { maximum: 10 }
    validates :username, presence: true 
    validates :username, uniqueness: true 
end
