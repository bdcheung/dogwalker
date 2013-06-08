require 'spec_helper'

describe WalksController do
	describe "Walk" do
		before do
			@walk = Walk.new(starttime: "January 1, 2001 2:00pm", duration_in_minutes: 20, dog_id: 1)
		end
		
		it "should have a calculated endtime" do
			@walk.endtime.should eq("January 1, 2001 2:20pm")
		end

		it "should belong to a dog" do
			@walk.dog_id.should be > 0
		end
	end
end
