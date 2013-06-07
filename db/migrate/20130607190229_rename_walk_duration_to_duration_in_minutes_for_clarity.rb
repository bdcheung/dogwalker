class RenameWalkDurationToDurationInMinutesForClarity < ActiveRecord::Migration
  def change
  	rename_column :walks, :duration, :duration_in_minutes
  end
end
