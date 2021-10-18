class CreateReceiptDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :receipt_details do |t|
      t.references :receipt, null: false, foreign_key: true
      t.string :name
      t.integer :price
      t.integer :quantity

      t.timestamps
    end
  end
end
