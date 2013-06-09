require 'spec_helper'

describe "Dog pages" do
	subject { page }

	describe "profile page" do
		let(:dog) { FactoryGirl.create(:dog) }
		before { visit dog_path(dog) }

		describe "should list the dog name" do
			it { should have_content(dog.name) }
		end

		describe "should list the dog breed" do
			it { should have_content(dog.breed) }
		end
	end
end