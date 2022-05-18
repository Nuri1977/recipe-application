class ShoppingListController < ApplicationController
  def index
    @recipe_foods = current_user.recipe_foods
  end
end
