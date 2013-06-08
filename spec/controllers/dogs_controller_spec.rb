require 'spec_helper'

describe Dog do
	before { @dog = Dog.new(	name: "Fido",
								breed: "Dachsund",
								color: "Brown", 
								birthday: "January 1, 2013", 
								rabies_certificate: true, 
								fixed: true, 
								gender: "Male"
								)}
end