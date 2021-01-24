class Quantity < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  MESURE = ["g", "kg", "Ml", "Cl", "Litre", "C à café", "C à soupe", "Brique(s)", "Tasse(s)", "Pincée(s)", "Tranche(s)", "Conserve(s)", "Pâte(s)", "Sachet(s)", "(rien)"]

  validates :q, presence: true
  validates :mesure, inclusion: { in: MESURE }
end
