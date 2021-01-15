class Step < ApplicationRecord
  belongs_to :recipe

  validates :description, presence: true, length: { minium: 5 }
end
