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

ActiveRecord::Schema.define(version: 20170709060725) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blacklists", force: :cascade do |t|
    t.bigint "therapist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["therapist_id"], name: "index_blacklists_on_therapist_id"
  end

  create_table "bookings", force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "therapist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_bookings_on_request_id"
    t.index ["therapist_id"], name: "index_bookings_on_therapist_id"
  end

  create_table "issues", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "phone"
    t.string "email"
    t.text "notes"
    t.string "username"
    t.string "password_digest"
    t.string "image_url"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "patient_issues", id: false, force: :cascade do |t|
    t.bigint "patient_id"
    t.bigint "issue_id"
    t.index ["issue_id"], name: "index_patient_issues_on_issue_id"
    t.index ["patient_id"], name: "index_patient_issues_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "zip_code"
    t.integer "age"
    t.string "sex"
    t.string "language"
    t.bigint "organization_id"
    t.string "notes"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_patients_on_organization_id"
  end

  create_table "request_issues", id: false, force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "issue_id"
    t.index ["issue_id"], name: "index_request_issues_on_issue_id"
    t.index ["request_id"], name: "index_request_issues_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "organization_id"
    t.bigint "patient_id"
    t.datetime "time"
    t.string "location"
    t.text "notes"
    t.string "issue_param"
    t.string "client_language_param"
    t.string "client_category_param"
    t.string "client_ethnicity_param"
    t.integer "ti_value"
    t.integer "cl_value"
    t.integer "cc_value"
    t.integer "ce_value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["organization_id"], name: "index_requests_on_organization_id"
    t.index ["patient_id"], name: "index_requests_on_patient_id"
  end

  create_table "therapist_issues", id: false, force: :cascade do |t|
    t.bigint "therapist_id"
    t.bigint "issue_id"
    t.index ["issue_id"], name: "index_therapist_issues_on_issue_id"
    t.index ["therapist_id"], name: "index_therapist_issues_on_therapist_id"
  end

  create_table "therapists", force: :cascade do |t|
    t.integer "pt_db_id"
    t.string "status"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
