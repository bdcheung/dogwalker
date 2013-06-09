class WalksController < ApplicationController
	before_filter :find_dog

	def index
		@walks = Walk.upcoming
	end

	def new
		@walk = Walk.new
	end

	def create
		@walk = @dog.walks.new(params[:walk])
		if @walk.save
			redirect_to @walk
		else
			fail
		end
	end

	def show
		@walk = Walk.find(params[:id])
	end

	private
	def walk_params
		params.require(:walk).permit(:starttime, :duration_in_minutes, :dog_id)
	end

	def find_dog
		@dog = Dog.find(params[:dog_id])
	end
end
