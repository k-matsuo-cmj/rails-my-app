class ReceiptDetail < ApplicationRecord
  belongs_to :receipt
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
  validates :quantity, numericality: { greater_than: 0 }
end
