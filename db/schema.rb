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

ActiveRecord::Schema.define(version: 20170326184515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.string "url"
    t.text "about"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "contacts", id: :serial, force: :cascade do |t|
    t.integer "company_id", default: 1
    t.string "fname"
    t.string "lname"
    t.string "title", default: "unspecified"
    t.string "email", default: "unspecified"
    t.string "phone", default: "unspecified"
    t.string "url", default: "unspecified"
    t.string "linkedin", default: "unspecified"
    t.string "twitter", default: "unspecified"
    t.text "about", default: "unspecified"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "jobs", id: :serial, force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.integer "company_id"
    t.text "description"
    t.text "requirements"
    t.text "instructions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "steps", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", id: :serial, force: :cascade do |t|
    t.integer "user_id", default: 1
    t.integer "step_id", default: 1
    t.integer "job_id", default: 1
    t.integer "contact_id", default: 1
    t.integer "company_id", default: 1
    t.date "due_date"
    t.text "title"
    t.integer "priority", default: 1
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", id: :serial, force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.string "phone1"
    t.string "phone2"
    t.string "address_line1"
    t.string "address_line2"
    t.string "city"
    t.string "state"
    t.string "zip"
    t.text "elevator_pitch"
    t.text "resume"
    t.text "twitter_url"
    t.text "linkedin_url"
    t.text "github_url"
    t.text "learn_student_profile_url"
    t.text "blog_site_url"
    t.text "portfolio_site_url"
    t.string "coach_name"
    t.string "coach_email"
    t.string "coach_slack"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
