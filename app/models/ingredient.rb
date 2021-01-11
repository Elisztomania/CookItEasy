class Ingredient < ApplicationRecord
  belongs_to :quantity

  validates :name, presence: true
end
