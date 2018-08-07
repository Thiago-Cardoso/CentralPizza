class CategoryProduct < ApplicationRecord
    validates :name, :description, presence: true
end
