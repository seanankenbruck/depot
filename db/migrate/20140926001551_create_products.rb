class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :image_url
      t.decimal :price, precision: 8, scale: 2 #8 digits of significance, 2 decimal places

      t.timestamps
    end
  end
end
