class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :category_id
      t.string :categoryname
      t.text :description
      t.string :image_url

      t.timestamps null: false
    end
  end
end
