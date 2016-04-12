class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :Site
      t.string :name
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
