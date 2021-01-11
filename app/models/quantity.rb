class Quantity < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  MESURE = [" ", "Ml", "Cl", "Cc", "Cs", "Tasse", "Pincée(s)", "g"]

  validates :q, presence: true
  validates :mesure, inclusion: { in: MESURE }
end
