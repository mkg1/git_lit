require './database_config'

class AlbumsAndArtistsMigration < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.timestamps
    end

    create_table :albums do |t|
      t.references :artists
      t.string :name
      t.integer :inventory
      t.decimal :base_price, precision: 8, scale: 2
      t.decimal :discount, precision: 3, scale: 3
      t.timestamps
  end
end
end
