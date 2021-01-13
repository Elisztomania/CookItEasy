class Quantity < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  MESURE = [" ", "g", "Ml", "Cl", "L" "Cc", "Cs", "Tasse", "Pincée(s)", "Tranche(s)"]

  validates :q, presence: true
  validates :mesure, inclusion: { in: MESURE }
end
