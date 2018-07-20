class DropIngredientships < ActiveRecord::Migration[5.1]
  def change
      drop_table :ingredientships do |t|
        t.integer :recipe_id
        t.integer :ingredient_id

        t.timestamps
      end
  end
end
