class RemoveCreateFromProfiles < ActiveRecord::Migration[5.2]
  def change
    remove_column :profiles, :create, :string
  end
end
