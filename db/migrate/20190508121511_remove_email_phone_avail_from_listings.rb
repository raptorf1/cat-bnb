class RemoveEmailPhoneAvailFromListings < ActiveRecord::Migration[5.2]
  def change
    remove_column :listings, :email, :string
    remove_column :listings, :phone_number, :string
    remove_column :listings, :availability, :string
  end
end
