class ChangeDogBirthdayFromDateToDatetime < ActiveRecord::Migration
  def change
  	change_column :dogs, :birthday, :datetime
  end
end
