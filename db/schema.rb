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

ActiveRecord::Schema.define(version: 20171025174441) do

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
  end

end
