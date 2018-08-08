class Product < ApplicationRecord
  belongs_to :category_product

  validates :name, presence: true, uniqueness: true
  validates :price, :description, :category_product_id, presence: true

  validates :name, length: { maximum: 100, too_long: "-> %{count} characters is the maximum allowed", minimum: 2, too_short: "-> %{count} characters is the minimum allowed" }
  validates :description, length: { maximum: 100, too_long: "-> %{count} characters is the maximum a" }

end
