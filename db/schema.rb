ActiveRecord::Schema.define(version: 2020_10_13_085222) do

  create_table "apartments", force: :cascade do |t|
    t.string "property_name"
    t.integer "rent"
    t.string "address"
    t.integer "age"
    t.text "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string "train_line1"
    t.string "station_name1"
    t.integer "walk_time1"
    t.string "train_line2"
    t.string "station_name2"
    t.integer "walk_time2"
    t.integer "apartment_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["apartment_id"], name: "index_stations_on_apartment_id"
  end

end
