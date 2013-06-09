require 'spec_helper'

describe Dog do
	before do
		@dog = Dog.new(name:"Fido", birthday: "December 25, 2006", rabies_certificate: true, fixed: true)
	end

	it { should respond_to(:name) }
	it { should respond_to(:birthday) }
	it { should respond_to(:rabies_certificate) }
	it { should respond_to(:fixed) }

	describe "when name is not present" do
		before { @dog.name = "" }
		it { should_not be_valid }
	end

	describe "when birthday is not present" do
		before { @dog.birthday = "" }
		it { should_not be_valid }
	end
end