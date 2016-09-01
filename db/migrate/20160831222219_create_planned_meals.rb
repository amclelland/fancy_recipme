class CreatePlannedMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :planned_meals do |t|
      t.belongs_to :meal
      t.integer    :day_of_week

      t.timestamps
    end
  end
end
