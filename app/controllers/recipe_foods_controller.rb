class RecipeFoodsController < ApplicationController
  def new
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new
    @foods = Food.all.select { |food| @recipe.foods.exclude?(food) }
  end

  def create
    @recipe = Recipe.find(params[:recipe_id])
    @recipe_food = RecipeFood.new(recipe_food_params)
    @recipe_food.recipe_id = @recipe.id

    if @recipe_food.save
      redirect_to recipe_path(@recipe_food.recipe_id), notice: 'Ingredient was added successfully!'
    else
      flash[:alert] = 'Failed creating ingredient'
      redirect_back(fallback_location: root_path)
    end
  end

  def edit
    @recipe_food = RecipeFood.find(params[:id])
    @foods = Food.all
  end

  def update
    recipe_food = RecipeFood.find(params[:id])

    if recipe_food.update(recipe_food_params)
      redirect_to recipe_path(recipe_food.recipe_id), notice: 'Ingredient was edited successfully!'
    else
      redirect_to recipe_path(recipe_food.recipe_id), alert: 'Error editing ingredient!'
    end
  end

  def destroy
    recipe_food = RecipeFood.find(params[:id])
    recipe_food.destroy

    redirect_to recipe_path(recipe_food.recipe_id), notice: 'Ingredient was deleted successfully!'
  end

  private

  def recipe_food_params
    params.require(:recipe_food).permit(:recipe_id, :food_id, :quantity)
  end
end
