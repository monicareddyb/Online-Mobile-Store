class AddProductpriceToOrderDetails < ActiveRecord::Migration
  def change
    add_column :order_details, :productprice, :decimal
  end
end
