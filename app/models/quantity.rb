class Quantity < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  MESURE = ["g", "kg", "Ml", "Cl", "Litre", "C à café", "C à soupe", "Tasse(s)", "Pincée(s)", "Tranche(s)", "Conserve(s)", "Pâte(s)", "(rien)"]

  validates :q, presence: true
  validates :mesure, inclusion: { in: MESURE }
end
