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

ActiveRecord::Schema.define(version: 2018_09_07_042012) do

  create_table "admins", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "dist_floats", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "amount", default: "0"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "distributor_id"
    t.bigint "payment_channel_id"
    t.index ["distributor_id"], name: "index_dist_floats_on_distributor_id"
    t.index ["payment_channel_id"], name: "index_dist_floats_on_payment_channel_id"
  end

  create_table "distributors", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "dist_name"
    t.string "dist_contact"
    t.decimal "dist_float", precision: 8, scale: 2
    t.index ["email"], name: "index_distributors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_distributors_on_reset_password_token", unique: true
  end

  create_table "orders", primary_key: "order_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "quantity"
    t.datetime "pick_up"
    t.decimal "order_cost", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "distributor_id"
    t.decimal "cost", precision: 8, scale: 2
    t.index ["distributor_id"], name: "index_orders_on_distributor_id"
  end

  create_table "payment_channels", primary_key: "payment_channel_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "channel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", primary_key: "product_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.decimal "cost", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", primary_key: "transaction_id", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.decimal "amount", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "order_id"
    t.bigint "payment_channel_id"
    t.bigint "distributor_id"
    t.index ["distributor_id"], name: "index_transactions_on_distributor_id"
    t.index ["order_id"], name: "index_transactions_on_order_id"
    t.index ["payment_channel_id"], name: "index_transactions_on_payment_channel_id"
  end

  add_foreign_key "dist_floats", "distributors"
  add_foreign_key "orders", "distributors"
  add_foreign_key "transactions", "distributors"
end
