class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.integer :product_id
      t.string :productname
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
