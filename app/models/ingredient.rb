class Ingredient < ApplicationRecord
  has_and_belongs_to_many :recipes

  def self.update_ingredients(ingredient_string)
		return Ingredient.none if ingredient_string.blank?

		ingredient_string.split(",").map do |ingredient|
			Ingredient.find_or_create_by(name: ingredient.strip)
		end
	end


end
