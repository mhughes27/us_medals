class CreateMedalists < ActiveRecord::Migration
  def change
    create_table :medalists do |t|
      t.string :athlete
      t.string :sport
      t.string :event
      t.string :place

      t.timestamps null: false
    end
  end
end
