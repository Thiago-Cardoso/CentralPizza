class Order < ApplicationRecord

  # Association
  belongs_to :table

  # Validates
  validates :status, :total, :table_id, presence: true
end
