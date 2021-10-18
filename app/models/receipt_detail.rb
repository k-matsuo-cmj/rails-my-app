class ReceiptDetail < ApplicationRecord
  belongs_to :receipt
  validates :name, presence: true
end
