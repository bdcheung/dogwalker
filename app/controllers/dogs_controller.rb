class DogsController < ApplicationController
	def index
		@dogs = Dog.all
	end

	def show
		@dog = Dog.find(params[:id])
	end

	def new
		@dog = Dog.new
	end

	def create
		@dog = Dog.create(params[:dog])
		if @dog.save
			redirect_to @dog
		else
			fail
		end
	end

	private
	def dog_params
		params.require(:dog).permit(:name, :breed, :color, :birthday, :gender, :rabies_certificate, :fixed)
	end

end
