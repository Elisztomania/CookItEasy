class Recipe < ApplicationRecord
  belongs_to :user
  has_many :quantities
  has_many :ingredients, through: :quantity
  has_many :steps
  has_one_attached :photo

  CAT = ["EZPZ", "Classique", "Master chef", "Dessert"]

  validates :title, presence: true, length: { maximum: 25 }
  validates :category, presence: true, inclusion: { in: CAT }
  validates :cooking_time, presence: true
  validates :prep_time, presence: true
  validates :note, presence: true
end
