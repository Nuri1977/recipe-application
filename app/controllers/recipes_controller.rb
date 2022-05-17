class RecipesController < ApplicationController
  def index
    @recipes = current_user.recipes
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      redirect_to recipe_path(@recipe.id), notice: 'recipe was successfully created!'
    else
      redirect_to new_recipe_path, notice: 'recipe could not be created!'
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :user_id, :preparation_time, :cooking_time, :description, :public)
  end

end
