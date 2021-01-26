class StepsController < ApplicationController
  before_action :set_recipe, only: [:new, :create, :edit, :update]
  before_action :set_step, only: [:edit, :update]

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

  def edit
  end

  def update
    if @step.update(step_params)
      redirect_to @recipe, notice: 'Étape de préparation bien modifiée!'
    else
      render :new
    end
  end

  private

  def set_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def set_step
    @step = Step.find(params[:id])
  end

  def step_params
    params.require(:step).permit(:description, :recipe_id)
  end
end
