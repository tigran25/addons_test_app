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

ActiveRecord::Schema.define(version: 2022_03_11_220141) do

  create_table "do_addon_connector_customers", force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.string "key"
    t.json "metadata"
    t.string "plan"
    t.string "email"
    t.string "creator_uuid"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["key"], name: "index_do_addon_connector_customers_on_key"
  end

  create_table "do_addon_connector_notifications", force: :cascade do |t|
    t.integer "owner_id"
    t.string "kind"
    t.text "payload"
    t.text "resource_uuids"
    t.datetime "completed_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["kind"], name: "index_do_addon_connector_notifications_on_kind"
    t.index ["owner_id"], name: "index_do_addon_connector_notifications_on_owner_id"
  end

# Could not dump table "do_addon_connector_sso_events" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "do_addon_connector_tokens" because of following StandardError
#   Unknown type 'uuid' for column 'id'

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
