json.extract! recipe, :id, :name, :instruction, :created_at, :updated_at
json.url recipe_url(recipe, format: :json)
