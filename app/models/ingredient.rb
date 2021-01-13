class Ingredient < ApplicationRecord
  has_many :quantity

  validates :name, presence: true
end
