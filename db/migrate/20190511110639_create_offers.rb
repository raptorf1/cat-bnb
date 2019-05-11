class CreateOffers < ActiveRecord::Migration[5.2]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :email
      t.string :location
      t.integer :price
      t.references :listing, foreign_key: true

      t.timestamps
    end
  end
end
