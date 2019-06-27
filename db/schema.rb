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

ActiveRecord::Schema.define(version: 20190625152830) do

  create_table "calendar_pages", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "folio", null: false
    t.integer "start_month", null: false
    t.integer "end_month", null: false
    t.integer "start_day", null: false
    t.integer "end_day", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "manuscript_id"
    t.text "dates"
    t.index ["manuscript_id"], name: "index_calendar_pages_on_manuscript_id"
  end

  create_table "feast_names", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.bigint "feast_id"
    t.bigint "name_id"
    t.text "saint_attributes"
    t.string "saint_location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "name_date_id"
    t.index ["feast_id"], name: "index_feast_names_on_feast_id"
    t.index ["name_date_id"], name: "index_feast_names_on_name_date_id"
    t.index ["name_id"], name: "index_feast_names_on_name_id"
  end

  create_table "feasts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "month_number", null: false
    t.integer "day_number", null: false
    t.text "transcription"
    t.string "saint_name"
    t.text "saint_attributes"
    t.string "modifier"
    t.text "shading"
    t.string "color"
    t.bigint "manuscript_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "calendar_page_id"
    t.string "saint_location"
    t.index ["calendar_page_id"], name: "index_feasts_on_calendar_page_id"
    t.index ["manuscript_id"], name: "index_feasts_on_manuscript_id"
  end

  create_table "manuscripts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "shelfmark"
    t.string "name", null: false
    t.boolean "calendar_integral"
    t.string "numbering_method"
    t.string "book_type"
    t.string "manuscript_or_print"
    t.string "language"
    t.string "origin"
    t.text "origin_note"
    t.string "destination"
    t.text "destination_note"
    t.string "script"
    t.integer "text_height"
    t.integer "text_width"
    t.integer "text_depth"
    t.integer "writing_surface_height"
    t.integer "writing_surface_width"
    t.integer "start_year"
    t.integer "end_year"
    t.text "date_note"
    t.string "extent"
    t.string "provenance"
    t.string "state_of_completion"
    t.string "resource"
    t.text "columns"
    t.string "start_folio"
    t.string "end_folio"
    t.text "color_weighting"
    t.boolean "has_shading"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "calendar_folios", null: false
  end

  create_table "name_dates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer "month"
    t.integer "day"
    t.integer "use_count"
    t.boolean "preset"
    t.bigint "name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["day"], name: "index_name_dates_on_day"
    t.index ["month"], name: "index_name_dates_on_month"
    t.index ["name_id"], name: "index_name_dates_on_name_id"
  end

  create_table "names", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "variant_id"
    t.index ["variant_id"], name: "index_names_on_variant_id"
  end

  create_table "variants", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "variant"
    t.string "language"
    t.bigint "name_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name_id", "variant", "language"], name: "index_variants_on_name_id_and_variant_and_language", unique: true
    t.index ["name_id"], name: "index_variants_on_name_id"
  end

  add_foreign_key "calendar_pages", "manuscripts"
  add_foreign_key "feast_names", "feasts"
  add_foreign_key "feast_names", "name_dates"
  add_foreign_key "feast_names", "names"
  add_foreign_key "feasts", "calendar_pages"
  add_foreign_key "feasts", "manuscripts"
  add_foreign_key "name_dates", "names"
  add_foreign_key "names", "variants"
  add_foreign_key "variants", "names"
end
