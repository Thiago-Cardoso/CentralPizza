class Position < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :description, presence: true, uniqueness: true
end
