ActiveRecord::Schema.define(version: 2019_10_13_084435) do

  enable_extension "plpgsql"

  create_table "raeets", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
