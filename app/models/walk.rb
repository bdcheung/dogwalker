class Walk < ActiveRecord::Base
	belongs_to :dog
	def endtime
		starttime + duration_in_minutes.minutes
	end

	def self.next
		where("starttime > ?", Time.now).first
	end

	def self.upcoming
		where("starttime > ?", Time.now).order("starttime")
	end

	private
	def walk_params
		params.require(:walk).permit(:starttime, :duration)
	end
end
