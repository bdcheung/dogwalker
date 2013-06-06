class Walk < ActiveRecord::Base
	def endtime
		starttime + duration
	end
end
