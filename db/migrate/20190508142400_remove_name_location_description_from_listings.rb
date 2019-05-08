class RemoveNameLocationDescriptionFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :name, :string
    remove_column :listings, :location, :string
    remove_column :listings, :description, :text
  end
end
