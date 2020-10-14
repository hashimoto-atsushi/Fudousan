class CreateStations < ActiveRecord::Migration[5.2]
  def change
    create_table :stations do |t|
      t.string :train_line
      t.string :station_name
      t.integer :walk_time
      t.references :apartment, foreign_key: true

      t.timestamps
    end
  end
end
