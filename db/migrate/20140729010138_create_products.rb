class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :brand
      t.string :name
      t.string :description
      t.string :image_one
      t.string :image_two
      t.string :image_three
      t.string :image_four
      t.string :category_one
      t.string :category_2
      t.string :season
      t.float :original_price
      t.float :current_prive
      t.float :percentage_off
      t.string :product_url

      t.timestamps
    end
  end
end
