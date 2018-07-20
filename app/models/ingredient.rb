class Ingredient < ApplicationRecord
  has_many :ingredientships
  has_many :recipes, through: :ingredientships

  def self.update_ingredients(ingredient_string)
		return Ingredient.none if ingredient_string.blank?

		ingredient_string.split(",").map do |ingredient|
			Ingredient.find_or_create_by(name: ingredient.strip)
		end
	end


end
