class AddProductnameToOrderDetails < ActiveRecord::Migration
  def change
    add_column :order_details, :productname, :string
  end
end
