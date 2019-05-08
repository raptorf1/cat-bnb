class AddStartDateEndDatePetPictureUrlToListings < ActiveRecord::Migration[5.2]
  def change
    add_column :listings, :start_date, :date
    add_column :listings, :end_date, :date
    add_column :listings, :pet_picture, :string
  end
end
