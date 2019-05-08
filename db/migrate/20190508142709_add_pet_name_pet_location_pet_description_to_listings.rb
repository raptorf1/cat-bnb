class AddPetNamePetLocationPetDescriptionToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :pet_name, :string
    add_column :listings, :pet_location, :string
    add_column :listings, :pet_description, :text
  end
end
