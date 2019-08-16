# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_15_164218) do

  create_table "blossom_languages", force: :cascade do |t|
    t.integer "blossom_id"
    t.integer "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blossom_id"], name: "index_blossom_languages_on_blossom_id"
    t.index ["language_id"], name: "index_blossom_languages_on_language_id"
  end

  create_table "blossoms", force: :cascade do |t|
    t.string "hiragana"
    t.string "english_name"
    t.string "kanji"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "season"
    t.integer "position"
  end

  create_table "images", force: :cascade do |t|
    t.text "image_id"
    t.integer "blossom_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blossom_id"], name: "index_images_on_blossom_id"
  end

  create_table "languages", force: :cascade do |t|
    t.integer "blossom_id"
    t.string "blossom_language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["blossom_id"], name: "index_languages_on_blossom_id"
  end

end
