class CreateReceipts < ActiveRecord::Migration[6.1]
  def change
    create_table :receipts do |t|
      t.integer :total_price

      t.timestamps
    end
  end
end
