class AddCardioToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :cardio, :boolean
  end
end
