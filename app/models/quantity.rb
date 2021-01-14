class Quantity < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  MESURE = ["g", "Ml", "Cl", "L", "Cc", "Cs", "Tasse(s)", "Pincée(s)", "Tranche(s)", "Conserve(s)", "Pâte(s)", "(rien)"]

  validates :q, presence: true
  validates :mesure, inclusion: { in: MESURE }
end
