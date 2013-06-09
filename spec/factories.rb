FactoryGirl.define do
	factory :dog do
		name				"Fido"
		birthday			"January 1, 2001"
		breed				"Rhodesian Ridgeback"
		color				"Brown"
		rabies_certificate	true
		fixed				true
		gender				"Male"
	end
end