class MealsController < ApplicationController
  after_action :set_access_control_headers
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

  def set_access_control_headers
   headers['Access-Control-Allow-Origin'] = "*"
   headers['Access-Control-Request-Method'] = %w{GET POST OPTIONS}.join(",")
 end
end
