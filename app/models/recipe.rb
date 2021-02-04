class Recipe < ApplicationRecord
  belongs_to :user
  has_many :quantities
  has_many :ingredients, through: :quantity
  has_many :steps
  has_many :favorites, dependent: :destroy
  has_one_attached :photo

  CAT = ["EZPZ", "Classique", "Master chef", "Dessert"]

  validates :title, presence: true, length: { maximum: 30 }
  validates :category, presence: true, inclusion: { in: CAT }
  validates :cooking_time, presence: true, numericality: { greater_than: 0 }
  validates :prep_time, presence: true, numericality: { greater_than: 0 }
  validates :note, presence: true
end
