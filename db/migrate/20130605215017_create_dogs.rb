class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.string :breed
      t.string :color
      t.date :birthday
      t.text :notes
      t.boolean :rabies_certificate

      t.timestamps
    end
  end
end
