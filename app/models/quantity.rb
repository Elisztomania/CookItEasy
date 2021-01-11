class Quantity < ApplicationRecord
  belongs_to :ingredient
  belongs_to :recipe

  validates :q, presence: true
end
