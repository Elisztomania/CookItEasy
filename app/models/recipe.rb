class Recipe < ApplicationRecord
  belongs_to :user
  has_many :quantities
  has_many :ingredients, through: :quantity

  CAT = ["EZPZ", "Classique", "Master chef", "Dessert"]

  validates :title, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: CAT }
  validates :cooking_time, presence: true
  validates :prep_time, presence: true
  validates :note, presence: true
end
