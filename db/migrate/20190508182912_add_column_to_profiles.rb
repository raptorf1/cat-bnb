class AddColumnToProfiles < ActiveRecord::Migration[5.2]
  def change
    add_column :profiles, :name, :string
    add_column :profiles, :location, :string
    add_column :profiles, :price, :integer
    add_column :profiles, :description, :string
    add_column :profiles, :picture, :string
  end
end
