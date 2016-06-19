class MealsController < ApplicationController
  before_action :set_meal, only: [:show, :edit, :update]

  def index
    @meals = Meal.all

    render json: @meals
  end

  def show
    render json: @meal
  end

  def create
    @meal = Meal.new(meal_params)

    if @meal.save
      render json: @meal, status: :created, location: @meal
    else
      render json: @meal.errors, status: :unprocessable_entity
    end
  end

  private

  def set_meal
    @meal = Meal.find(params[:id])
  end

  def meal_params
    ActiveModelSerializers::Deserialization.jsonapi_parse(params)
  end
end
