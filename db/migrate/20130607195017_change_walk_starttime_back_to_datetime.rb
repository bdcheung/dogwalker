class ChangeWalkStarttimeBackToDatetime < ActiveRecord::Migration
  def change
  	change_column :walks, :starttime, :datetime
  end
end
