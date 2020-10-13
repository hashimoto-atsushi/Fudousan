class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :train_line1
      t.string :station_name1
      t.integer :walk_time1
      t.string :train_line2
      t.string :station_name2
      t.integer :walk_time2
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
