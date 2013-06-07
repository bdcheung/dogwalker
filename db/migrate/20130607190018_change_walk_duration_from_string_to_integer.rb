class ChangeWalkDurationFromStringToInteger < ActiveRecord::Migration
  def change
  	change_column :walks, :duration, :integer
  end
end
