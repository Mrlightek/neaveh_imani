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

ActiveRecord::Schema[7.2].define(version: 2024_09_14_194413) do
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

  create_table "application_settings", force: :cascade do |t|
    t.string "name"
    t.string "logo_location"
    t.text "tag_line"
    t.string "company_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dashboards", force: :cascade do |t|
    t.integer "site_visits"
    t.integer "site_sales"
    t.integer "sites_unique_visits"
    t.integer "bounce_rate"
    t.boolean "has_message"
    t.boolean "has_notification"
    t.string "name"
    t.string "profile_pic"
    t.string "server_status"
    t.integer "cpu_usage"
    t.integer "memory_usage"
    t.integer "disk_usage"
    t.integer "database"
    t.integer "domain"
    t.integer "email_account"
    t.string "new_reg_users"
    t.integer "sales_status"
    t.string "recent_article"
    t.string "statistic_summary"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_dashboards_on_user_id"
  end

  create_table "mailboxes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.boolean "published"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "product_pages", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "settings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name"
    t.string "last_name"
    t.string "title"
    t.text "bio"
    t.string "facebook"
    t.string "twitter"
    t.string "instagram"
    t.string "contact_information"
    t.string "phone_number"
    t.string "home_address"
    t.string "office_address"
    t.string "other_information"
    t.string "skill"
    t.string "degree"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "mailbox_id"
    t.integer "dashboard_id"
    t.integer "application_settings_id"
    t.index ["application_settings_id"], name: "index_users_on_application_settings_id"
    t.index ["dashboard_id"], name: "index_users_on_dashboard_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["mailbox_id"], name: "index_users_on_mailbox_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
  add_foreign_key "dashboards", "users"
  add_foreign_key "posts", "users"
  add_foreign_key "users", "application_settings", column: "application_settings_id"
  add_foreign_key "users", "dashboards"
  add_foreign_key "users", "mailboxes"
end
