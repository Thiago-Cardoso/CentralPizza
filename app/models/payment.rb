class Payment < ApplicationRecord
  belongs_to :order
  validates :order_id, :tax_invoice, :total, presence: true
end
