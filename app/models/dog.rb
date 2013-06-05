class Dog < ActiveRecord::Base
	def age
		Time.now.year - birthday.strftime("%Y").to_i
	end

	def self.fixed?
		fixed
	end
end
