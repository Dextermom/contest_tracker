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

ActiveRecord::Schema.define(version: 20180306223635) do

  create_table "entries", force: :cascade do |t|
    t.integer "student_id"
    t.integer "selection_id"
    t.string "year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["selection_id"], name: "index_entries_on_selection_id"
    t.index ["student_id"], name: "index_entries_on_student_id"
  end

  create_table "selections", force: :cascade do |t|
    t.string "title"
    t.string "composer"
    t.string "publisher"
    t.string "pml"
    t.string "voicing"
    t.string "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "grad_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "welcomes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "selection_id"
    t.integer "student_id"
    t.index ["selection_id"], name: "index_welcomes_on_selection_id"
    t.index ["student_id"], name: "index_welcomes_on_student_id"
  end

end
