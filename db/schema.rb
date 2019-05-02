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

ActiveRecord::Schema.define(version: 2019_05_02_021541) do

  create_table "interns", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "school"
    t.string "education"
    t.boolean "html"
    t.boolean "javascript"
    t.boolean "java"
    t.boolean "database"
    t.boolean "ai"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "resume"
  end

  create_table "project_sponsors", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "ProjectName"
    t.string "ProjectDesc"
    t.string "ProjectSponsorName"
    t.string "ProjectSponsorLink"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "ProjectScope"
  end

end
