class FavoritesController < ApplicationController
  before_action :set_recipe, only: [:create]

  def create
    @favorite = Favorite.new
    @favorite.user = current_user
    @favorite.recipe = @recipe

    if @favorite.save
      redirect_to @recipe
    else
      render :new
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    redirect_to recipe_path(@favorite.recipe)
  end

  def show
    @favorites = Favorite.where(user: current_user)
    @fav_recipes = []
    @favorites.each do |fav|
      rec = Recipe.find(fav.recipe_id)
      @fav_recipes << rec
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
