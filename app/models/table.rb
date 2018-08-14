class Table < ApplicationRecord
  validates :description, presence: true
  validates :status, inclusion: { in: [true, false] }
  validates :description, length: { maximum: 100, too_long: "-> %{count} characters is the maximum allowed", minimum: 10, too_short: "-> %{count} characters is the minimum allowed" }
end
