class AddCocktailRefToIngredients < ActiveRecord::Migration[5.1]
  def change
    add_reference :ingredients, :cocktail, foreign_key: true
  end
end
