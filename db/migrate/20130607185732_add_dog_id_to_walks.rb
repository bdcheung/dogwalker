class AddDogIdToWalks < ActiveRecord::Migration
  def change
  	add_column :walks, :dog_id, :integer
  end
end
