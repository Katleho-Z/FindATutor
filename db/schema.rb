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

ActiveRecord::Schema[7.0].define(version: 2023_06_24_123602) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

  create_table "lessons", force: :cascade do |t|
    t.bigint "tutor_id", null: false
    t.bigint "student_id", null: false
    t.date "date"
    t.time "time"
    t.float "amount_offered"
    t.string "status"
    t.bigint "skill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_lessons_on_skill_id"
    t.index ["student_id"], name: "index_lessons_on_student_id"
    t.index ["tutor_id"], name: "index_lessons_on_tutor_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_reviews", force: :cascade do |t|
    t.bigint "session_id", null: false
    t.integer "rating"
    t.text "comment"
    t.bigint "tutor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_student_reviews_on_session_id"
    t.index ["tutor_id"], name: "index_student_reviews_on_tutor_id"
  end

  create_table "student_skills", force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "skill_id", null: false
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_student_skills_on_skill_id"
    t.index ["student_id"], name: "index_student_skills_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "profile_image"
    t.bigint "user_id", null: false
    t.integer "phone_number"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "tutor_profiles", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.text "bio"
    t.text "skills"
    t.decimal "rating"
    t.string "location"
    t.bigint "student_reviews_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_reviews_id"], name: "index_tutor_profiles_on_student_reviews_id"
    t.index ["user_id"], name: "index_tutor_profiles_on_user_id"
  end

  create_table "tutor_reviews", force: :cascade do |t|
    t.bigint "session_id", null: false
    t.integer "rating"
    t.text "comment"
    t.bigint "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["session_id"], name: "index_tutor_reviews_on_session_id"
    t.index ["student_id"], name: "index_tutor_reviews_on_student_id"
  end

  create_table "tutor_skills", force: :cascade do |t|
    t.bigint "tutor_id", null: false
    t.bigint "skill_id", null: false
    t.integer "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["skill_id"], name: "index_tutor_skills_on_skill_id"
    t.index ["tutor_id"], name: "index_tutor_skills_on_tutor_id"
  end

  create_table "tutors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "profile_image"
    t.text "availability"
    t.bigint "user_id", null: false
    t.string "location"
    t.string "email_address"
    t.text "bio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tutors_on_user_id"
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "lessons", "skills"
  add_foreign_key "lessons", "students"
  add_foreign_key "lessons", "tutors"
  add_foreign_key "student_reviews", "tutors"
  add_foreign_key "student_skills", "skills"
  add_foreign_key "student_skills", "students"
  add_foreign_key "students", "users"
  add_foreign_key "tutor_profiles", "student_reviews", column: "student_reviews_id"
  add_foreign_key "tutor_profiles", "users"
  add_foreign_key "tutor_reviews", "students"
  add_foreign_key "tutor_skills", "skills"
  add_foreign_key "tutor_skills", "tutors"
  add_foreign_key "tutors", "users"
end
