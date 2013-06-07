class ChangeWalkStarttimeFromDatetimeToTime < ActiveRecord::Migration
  def change
  	change_column :walks, :starttime, :time
  end
end
