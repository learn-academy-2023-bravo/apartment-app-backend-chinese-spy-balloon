ActiveRecord::Schema[7.0].define(version: 2023_05_09_170159) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartements", force: :cascade do |t|
    t.string "street"
    t.string "unit"
    t.string "city"
    t.string "state"
    t.integer "square_footage"
    t.string "price"
    t.integer "bedrooms"
    t.float "bathrooms"
    t.string "pets"
    t.text "image"
    t.integer "user_id"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
