class CreateWalks < ActiveRecord::Migration
  def change
    create_table :walks do |t|
      t.datetime :starttime
      t.datetime :endtime

      t.timestamps
    end
  end
end
