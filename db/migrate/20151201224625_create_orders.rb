class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :orderId
      t.datetime :date
      t.decimal :amount
      
      t.timestamps
    end
   end
end
