ActiveRecord::Schema.define(version: 2019_07_24_203821) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "citext"
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.bigint "phone"
    t.string "street"
    t.string "city"
    t.string "state"
    t.integer "zip"
    t.string "office_hours"
    t.float "lat"
    t.float "lng"
    t.string "website"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
