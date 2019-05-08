class Listing < ApplicationRecord
  validates_presence_of :name, :location, :description, :availability, :email, :phone_number
end
