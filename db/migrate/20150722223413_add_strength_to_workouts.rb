class AddStrengthToWorkouts < ActiveRecord::Migration
  def change
    add_column :workouts, :strength, :boolean
  end
end
