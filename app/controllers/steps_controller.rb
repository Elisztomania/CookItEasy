class StepsController < ApplicationController
  before_action :set_recipe, only: [:new, :create]

  def new
    @step = Step.new
  end

  def create
    @step = Step.new(step_params)
    @step.recipe = @recipe
    if @step.save
      redirect_to new_recipe_step_path(@recipe)
    else
      render :new
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def step_params
    params.require(:step).permit(:description, :recipe_id)
  end
end
