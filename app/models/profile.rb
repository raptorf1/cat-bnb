class Profile < ApplicationRecord
  validates_presence_of :name, :location, :description, :picture
  belongs_to :user 
end
