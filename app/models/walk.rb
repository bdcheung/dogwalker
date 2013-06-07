class Walk < ActiveRecord::Base
	belongs_to :dog
	def endtime
		starttime + duration.minutes
	end
end
