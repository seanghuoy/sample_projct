class CreateImages < ActiveRecord::Migration
  def change
    create_table :image_urls do |t|
      t.string :url
      t.references :product

      t.timestamps null: false
    end
  end
end
