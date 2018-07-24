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

ActiveRecord::Schema.define(version: 20180724175954) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "client_quotations", force: :cascade do |t|
    t.bigint "client_id"
    t.bigint "quotation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_client_quotations_on_client_id"
    t.index ["quotation_id"], name: "index_client_quotations_on_quotation_id"
  end

  create_table "clients", force: :cascade do |t|
    t.integer "rut"
    t.string "dv"
    t.string "name"
    t.string "last_name"
    t.bigint "institution_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["institution_id"], name: "index_clients_on_institution_id"
  end

  create_table "estados", force: :cascade do |t|
    t.string "nombre"
    t.integer "tiempo_respuesta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "institutions", force: :cascade do |t|
    t.integer "rut"
    t.string "dv"
    t.string "business_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "payments", force: :cascade do |t|
    t.string "OC"
    t.string "coin"
    t.float "rode"
    t.boolean "iva"
    t.bigint "quotation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotation_id"], name: "index_payments_on_quotation_id"
  end

  create_table "payments_details", force: :cascade do |t|
    t.integer "number"
    t.string "description"
    t.integer "percentage"
    t.float "rode"
    t.datetime "date_payment"
    t.datetime "date_payment_real"
    t.string "hes"
    t.bigint "payments_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["payments_id"], name: "index_payments_details_on_payments_id"
  end

  create_table "quotations", force: :cascade do |t|
    t.string "code_quotation"
    t.string "title"
    t.text "description"
    t.bigint "state_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_quotations_on_client_id"
    t.index ["state_id"], name: "index_quotations_on_state_id"
  end

  create_table "quote_details", force: :cascade do |t|
    t.string "applicant"
    t.string "email"
    t.datetime "application_date"
    t.datetime "response_date"
    t.bigint "quotation_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["quotation_id"], name: "index_quote_details_on_quotation_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.integer "sla"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_clients", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "client_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_user_clients_on_client_id"
    t.index ["user_id"], name: "index_user_clients_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "nombre"
    t.string "apellido_paterno"
    t.string "apellido_materno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "client_quotations", "clients"
  add_foreign_key "client_quotations", "quotations"
  add_foreign_key "clients", "institutions"
  add_foreign_key "payments", "quotations"
  add_foreign_key "payments_details", "payments", column: "payments_id"
  add_foreign_key "quotations", "clients"
  add_foreign_key "quotations", "states"
  add_foreign_key "quote_details", "quotations"
  add_foreign_key "user_clients", "clients"
  add_foreign_key "user_clients", "users"
end
