class ChangeWalkEndtimeToDuration < ActiveRecord::Migration
  def change
  	rename_column :walks, :endtime, :duration
  	change_column :walks, :duration, :string
  end
end
