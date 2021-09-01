class Vendor < ApplicationRecord
    has_secure_password
    has_many :items 
end
