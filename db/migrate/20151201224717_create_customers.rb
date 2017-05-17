class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :username
      t.string :password
      t.string :name
      t.text :address
      t.integer :mobileNumber

      t.timestamps
    end
  end
end
