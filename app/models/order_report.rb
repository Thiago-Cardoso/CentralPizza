class OrderReport < ApplicationRecord

  # Associations
  belongs_to :order
  belongs_to :user

  # Validations
  validates :description, :date_time, :user_id, :order_id, presence: true
end
