class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.text :title
      t.text :year
      t.text :image
      
      t.timestamps null: false
    end
  end
end
