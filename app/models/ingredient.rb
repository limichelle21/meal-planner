class Ingredient < ApplicationRecord
  has_many :ingredientships
  has_many :recipes, through: :ingredientships
end
