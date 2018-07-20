module IngredientsHelper

  def ingredients_to_buttons(ingredients)
  		raw ingredients.map { |l| link_to l.name,ingredient_path(id: l.id), class: 'btn-xs btn-primary' }.join(' ')
  	end
end
