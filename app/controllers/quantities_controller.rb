class QuantitiesController < ApplicationController
  before_action :set_recipe, only: [:new, :create]

  def new
    @quantity = Quantity.new
    @ingredient = Ingredient.new
  end

  def create
    @quantity = Quantity.new(quantity_params)
    @ingredient = Ingredient.new(name: params[:quantity][:ingredient])
    @quantity.recipe = @recipe
    @quantity.ingredient = @ingredient
    if @quantity.save!
      redirect_to @recipe
    else
      render :new
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def quantity_params
    params.require(:quantity).permit(:q, :mesure, :ingredient_id, :recipe_id)
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
