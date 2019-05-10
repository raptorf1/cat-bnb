class Profile < ApplicationRecord
  validates_presence_of :name, :location, :description, :picture
  has_one :user
end
