class Dog < ActiveRecord::Base
	has_many :walks, :dependent => :destroy
	validates_presence_of :name, :birthday

	GENDER = ['Male', 'Female']

	def age
		Time.now.year - birthday.strftime("%Y").to_i
	end

	def self.fixed?
		fixed
	end

	def next_walk
		walks.where("starttime > ?", Time.now).first
	end


end
