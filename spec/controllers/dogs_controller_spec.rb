require 'spec_helper'

describe DogsController do
	describe "Dog" do
		before do
			@dog = Dog.new(name:"Fido")
		end
		it "should have a name" do
			@dog.should respond_to(:name)
		end
		it "should be on the front page" do
			visit dogs_path
			@dog.should respond_to(:foo)
		end
	end
end