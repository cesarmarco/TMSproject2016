class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :customer_id
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone

      t.timestamps null: false
    end
  end
end
