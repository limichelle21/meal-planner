class Recipe < ApplicationRecord
  has_many :ingredientships
  has_many :ingredients, through: :ingredientships

  has_many :taggings
  has_many :tags, through: :taggings
end
