class Logistic < ApplicationRecord
    validates :location, uniqueness: true
    validates :product, :color, :size, :quantity, :location, presence: true
end