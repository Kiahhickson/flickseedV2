# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160209000049) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "founders", force: :cascade do |t|
    t.text     "name"
    t.integer  "founder_id"
    t.text     "company_name"
    t.text     "email_address"
    t.text     "password_digest"
    t.text     "location"
    t.text     "website"
    t.text     "profile_picture"
    t.text     "description"
    t.text     "industry"
    t.text     "capital_required"
    t.text     "equity_share"
    t.text     "video"
    t.text     "image_one"
    t.text     "image_two"
    t.text     "image_three"
    t.text     "image_four"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "investors", force: :cascade do |t|
    t.text     "name"
    t.text     "company_name"
    t.text     "email_address"
    t.text     "password_digest"
    t.text     "website"
    t.string   "title"
    t.text     "profile_picture"
    t.integer  "investor_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "swipes", force: :cascade do |t|
    t.integer  "founder_id"
    t.integer  "investor_id"
    t.boolean  "favourite"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
