class Dose < ApplicationRecord
  belongs_to :ingredient
  belongs_to :cocktail

  validates :description, uniqueness: true, presence: true
  validates :cocktail_id, presence: true
  validates :ingredient_id, presence: true
end
