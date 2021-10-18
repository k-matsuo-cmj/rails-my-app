class Receipt < ApplicationRecord
  has_many :receipt_details, inverse_of: :receipt, dependent: :destroy
  accepts_nested_attributes_for :receipt_details
  validates :total_price, numericality: { greater_than: 0 }
end
