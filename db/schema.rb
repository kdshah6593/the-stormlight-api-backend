# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_06_04_220107) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "book_characters", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_book_characters_on_book_id"
    t.index ["character_id"], name: "index_book_characters_on_character_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "author"
    t.string "url"
    t.string "isbn"
    t.integer "hardcover_pages"
    t.integer "paperback_pages"
    t.integer "chapters"
    t.string "book_type"
    t.string "publisher"
    t.integer "year_released"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.boolean "alive"
    t.string "titles", default: [], array: true
    t.string "aliases", default: [], array: true
    t.string "occupation"
    t.string "affiliations", default: [], array: true
    t.boolean "shardbearer", default: false
    t.integer "birth_year"
    t.integer "death_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "race_id", null: false
    t.bigint "location_id", null: false
    t.bigint "knights_radiant_order_id", null: false
    t.bigint "father_id"
    t.bigint "mother_id"
    t.bigint "spouse_id"
    t.string "children", default: [], array: true
    t.string "siblings", default: [], array: true
    t.string "relatives", default: [], array: true
    t.index ["father_id"], name: "index_characters_on_father_id"
    t.index ["knights_radiant_order_id"], name: "index_characters_on_knights_radiant_order_id"
    t.index ["location_id"], name: "index_characters_on_location_id"
    t.index ["mother_id"], name: "index_characters_on_mother_id"
    t.index ["race_id"], name: "index_characters_on_race_id"
    t.index ["spouse_id"], name: "index_characters_on_spouse_id"
  end

  create_table "essences", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "number_name"
    t.string "gemstone"
    t.string "body_focus"
    t.string "primary_divine_attribute"
    t.string "secondary_divine_attribute"
    t.string "soulcasting_properties", default: [], array: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "knights_radiant_orders", force: :cascade do |t|
    t.string "title"
    t.string "bond"
    t.string "surge1"
    t.string "surge2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.string "location_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "povs", force: :cascade do |t|
    t.bigint "book_id", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["book_id"], name: "index_povs_on_book_id"
    t.index ["character_id"], name: "index_povs_on_character_id"
  end

  create_table "races", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sprens", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "surges", force: :cascade do |t|
    t.string "name"
    t.string "knights_radiant_order1"
    t.string "knights_radiant_order2"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "book_characters", "books"
  add_foreign_key "book_characters", "characters"
  add_foreign_key "characters", "knights_radiant_orders"
  add_foreign_key "characters", "locations"
  add_foreign_key "characters", "races"
  add_foreign_key "povs", "books"
  add_foreign_key "povs", "characters"
end
