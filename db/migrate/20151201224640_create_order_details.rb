class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.string :orderId
      t.string :productId
      t.integer :quantity
      t.references :Order, index: true
      t.references :Product, index: true

      t.timestamps
    end
  end
end
