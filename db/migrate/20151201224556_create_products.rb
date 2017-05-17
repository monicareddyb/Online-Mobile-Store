class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :productId
      t.integer :quantity
      t.string :name
      t.decimal :price
      t.integer :modelNumber
      t.string :make
      t.string :color
      t.string :storage
      t.string :os
      t.text :specification

      t.timestamps
    end
  end
end
