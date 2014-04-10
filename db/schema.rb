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

ActiveRecord::Schema.define(version: 20140408135740) do

  create_table "countries", force: true do |t|
    t.string   "name"
    t.string   "isd_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "currencies", force: true do |t|
    t.string   "name"
    t.string   "code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "searches", force: true do |t|
    t.string   "city"
    t.string   "country"
    t.string   "latitude"
    t.string   "longitude"
    t.string   "period"
    t.date     "startDate"
    t.date     "endDate"
    t.time     "startTime"
    t.time     "endTime"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venue_opening_hours", force: true do |t|
    t.integer  "venue_id"
    t.time     "starttime_1"
    t.time     "endtime_1"
    t.boolean  "closed_1"
    t.time     "starttime_2"
    t.boolean  "closed_2"
    t.time     "starttime_3"
    t.time     "endtime_3"
    t.boolean  "closed_3"
    t.time     "starttime_4"
    t.time     "endtime_4"
    t.boolean  "closed_4"
    t.time     "starttime_5"
    t.time     "endtime_5"
    t.boolean  "closed_5"
    t.time     "starttime_6"
    t.time     "endtime_6"
    t.boolean  "closed_6"
    t.time     "starttime_0"
    t.time     "endtime_0"
    t.boolean  "closed_0"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venue_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "company"
    t.text     "description"
    t.integer  "country_id"
    t.string   "postal_code"
    t.string   "state"
    t.string   "city"
    t.string   "street"
    t.string   "address_extra"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "arrival_info"
    t.string   "contact_person"
    t.string   "contact_phone"
    t.string   "contact_fax"
    t.string   "contact_email"
    t.string   "url_website"
    t.string   "url_twitter"
    t.string   "url_googleplus"
    t.string   "url_linkedin"
    t.integer  "currency_id"
    t.string   "stripe_merchant_id"
    t.integer  "venue_status_id"
    t.string   "vat"
    t.string   "main_photo"
    t.string   "time_zone"
    t.integer  "venue_type_id"
    t.integer  "cancellation_time_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workspace_prices", force: true do |t|
    t.integer  "workspace_id"
    t.float    "hourly_price"
    t.boolean  "hourly_price_active"
    t.float    "half_day_price"
    t.boolean  "half_day_price_active"
    t.float    "day_price"
    t.boolean  "day_price_Active"
    t.float    "monthly_price"
    t.boolean  "monthly_price_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workspace_types", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workspaces", force: true do |t|
    t.integer  "venue_id"
    t.string   "name"
    t.text     "description"
    t.integer  "workspace_type_id"
    t.integer  "max_capacity"
    t.integer  "amenity_id"
    t.boolean  "multiple_workspace"
    t.boolean  "charged_by_person_count"
    t.string   "main_photo"
    t.integer  "workspace_status_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
