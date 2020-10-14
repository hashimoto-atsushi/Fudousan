class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :train_line1
      t.string :station_name1
      t.integer :walk_time1
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
