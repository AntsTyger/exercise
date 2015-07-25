class WorkoutsController < ApplicationController
	before_action :find_workout, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:show]
  def index
    @search = WorkoutSearch.new(params[:search])
    @workouts = current_user.workouts@search.scope
  end

	def show
	end

	def new
		@workout = current_user.workouts.build
	end

	def create
		@workout = current_user.workouts.build(workout_params)

		if @workout.save
			redirect_to @workout, notice: "Successfully created new workout"
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @workout.update(workout_params)
			redirect_to @workout
		else
			render 'edit'
		end
	end

	def destroy
		@workout.destroy
		redirect_to root_path
	end

	private

	def workout_params
		params.require(:workout).permit(:date, :workout, :mood, :length, :strength, :cardio, :user_id)
	end

	def find_workout
		@workout = Workout.find(params[:id])
	end
end