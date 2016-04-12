class CreateMezages < ActiveRecord::Migration
  def change
    create_table :mezages do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :phone
      t.string :subject
      t.text :body

      t.timestamps null: false
    end
  end
end
