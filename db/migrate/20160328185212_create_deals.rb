class CreateDeals < ActiveRecord::Migration
  def change
    create_table :deals do |t|
      t.date :day
      t.float :money
      t.text :note

      t.timestamps null: false
    end
  end
end
