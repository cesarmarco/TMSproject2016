class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.integer :order_id
      t.integer :customer_id
      t.string :order_date

      t.timestamps null: false
    end
  end
end
