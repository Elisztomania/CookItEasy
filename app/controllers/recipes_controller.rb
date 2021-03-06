class RecipesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_recipe, only: [:show, :edit, :update]

  def index
    @recipes = Recipe.all

    @recipes = @recipes.where(category: params[:category]) if params[:category].present?
    @recipes = @recipes.where("title ILIKE ?", "%#{params[:query]}%") if params[:query].present?
  end

  def show
    @favorite = @recipe.favorites.find_by(user: current_user)
  end

  def new
    @recipe = Recipe.new
    @quantity_new = Quantity.new
    @ingredient = Ingredient.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.user = current_user
    if @recipe.save
      redirect_to new_recipe_quantity_path(@recipe)
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Votre recette à bien été modifiée ✌️'
    else
      render :edit
    end
  end

  def show_my
    @myrecipes = Recipe.where(user: current_user)
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:id])
  end

  def recipe_params
    params.require(:recipe).permit(:title, :category, :prep_time, :cooking_time, :note, :user_id, :photo)
  end
end
