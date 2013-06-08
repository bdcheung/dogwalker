class WalksController < ApplicationController
	def index
		@walks = Walk.upcoming
	end

	private
	def walk_params
		params.require(:walk).permit(:starttime, :duration)
	end
end
