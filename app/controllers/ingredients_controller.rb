class IngredientsController < ApplicationController
  before_action :set_ingredient, only: [:show, :edit, :update]

  def index
    @ingredients = Ingredient.all

    render json: @ingredients
  end

  def show
    render json: @ingredient
  end

  # def create
  #   @meal = Meal.new(meal_params)

  #   if @meal.save
  #     render json: @meal, status: :created, location: @meal
  #   else
  #     render json: @meal.errors, status: :unprocessable_entity
  #   end
  # end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params[:id])
  end

  # def meal_params
  #   ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  # end
end
