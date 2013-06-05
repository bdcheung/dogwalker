class AddSpayNeuterToDogModel < ActiveRecord::Migration
	def up
		add_column :dogs, :fixed, :boolean
	end
	def down
		remove_column :dogs, :fixed
	end
end
