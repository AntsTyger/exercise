class RoutinesController < ApplicationController
    
    before_action :find_routine, only: [:show, :edit, :update, :destroy, :upvote, :downvote]
	before_action :authenticate_user!, except: [:index, :show]
    
def index
    @routines = Routine.all.order("created_at DESC")
end

def create
		@routine = current_user.routines.build(routine_params)

		if @routine.save
			redirect_to @routine, notice: "Routine was successfully created"
		else
			render 'new'
		end
end

def edit
end

def update
    if @routine.update(routine_params)
			redirect_to @routine, notice: "Routine was successfully updated"
	else
		render 'edit'
    end
end 

def destroy
	@routine.destroy
	redirect_to root_path
end

def new
    @routine = current_user.pins.build
end

def show
end

def upvote
	@routine.upvote_by current_user
	redirect_to :back
end

private

	def routine_params
		params.require(:routine).permit(:title, :description, :image )
	end

	def find_pin
		@routine = Routine.find(params[:id])
	end

end
