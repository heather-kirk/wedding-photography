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

ActiveRecord::Schema.define(version: 2019_07_21_211205) do

  create_table "locations", force: :cascade do |t|
    t.string "state"
    t.string "city"
    t.integer "zipcode"
    t.boolean "relocate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photographers", force: :cascade do |t|
    t.string "name"
    t.string "style"
    t.integer "price"
    t.integer "location_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_photographers_on_location_id"
    t.index ["user_id"], name: "index_photographers_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "stars"
    t.string "title"
    t.string "content"
    t.integer "user_id"
    t.integer "photographer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["photographer_id"], name: "index_reviews_on_photographer_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
