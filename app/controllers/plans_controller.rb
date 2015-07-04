class PlansController < ApplicationController
    
    before_action :find_plan, only: [:show, :destroy]
	before_action :authenticate_user!, except: [:index, :show]

	def index
		@plan = Plan.all.order("created_at DESC")
	end

	def show
	end

	def new
		@plan = current_user.plans.build
	end

	def create
		@plan = current_user.plans.build(plan_params)

		if @plan.save
			redirect_to @plan, notice: "Successfully created new plan"
		else
			render 'new'
		end
	end


	def destroy
		@plan.destroy
		redirect_to root_path, notice: "Successfully deleted plan"
	end

	private

	def plan_params
		params.require(:plan).permit(:title, :description, :image)
	end

	def find_plan
		@plan = Plan.find(params[:id])
	end
    
    
end
