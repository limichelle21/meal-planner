class CreateIngredientships < ActiveRecord::Migration[5.1]
  def change
    create_table :ingredientships do |t|
      t.integer :recipe_id
      t.integer :ingredient_id

      t.timestamps
    end
  end
end
