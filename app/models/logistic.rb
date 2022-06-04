class Logistic < ApplicationRecord
    validates :location, uniqueness: true
    validates :product, :color, :size, :quantity, presence: true
end