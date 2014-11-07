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

ActiveRecord::Schema.define(version: 20141107003216) do

  create_table "Administrator", primary_key: "adminID", force: true do |t|
    t.integer "infoID", null: false
  end

  add_index "Administrator", ["infoID"], name: "infoID", using: :btree

  create_table "Comment", primary_key: "commentID", force: true do |t|
    t.integer "infoID",                  null: false
    t.integer "postalCode",              null: false
    t.string  "comment",    limit: 1500, null: false
    t.date    "date",                    null: false
  end

  add_index "Comment", ["infoID"], name: "infoID", using: :btree
  add_index "Comment", ["postalCode"], name: "postalCode", using: :btree

  create_table "Community", primary_key: "postalCode", force: true do |t|
    t.string "communityName", limit: 200
  end

  create_table "ContactInfo", primary_key: "contactID", force: true do |t|
    t.integer "postalCode",               null: false
    t.string  "suburb",       limit: 100, null: false
    t.string  "city",         limit: 100, null: false
    t.integer "streetNumber",             null: false
    t.string  "street",       limit: 200, null: false
  end

  add_index "ContactInfo", ["postalCode"], name: "postalCode", using: :btree

  create_table "GeneralInfo", primary_key: "infoID", force: true do |t|
    t.string "firstName", limit: 30,  null: false
    t.string "lastName",  limit: 30,  null: false
    t.string "password",  limit: 40,  null: false
    t.string "email",     limit: 200, null: false
  end

  create_table "PhoneNumber", primary_key: "phoneID", force: true do |t|
    t.integer "infoID",      null: false
    t.integer "phoneNumber", null: false
  end

  add_index "PhoneNumber", ["infoID"], name: "infoID", using: :btree

  create_table "Project", primary_key: "projectID", force: true do |t|
    t.integer "postalCode",                  null: false
    t.string  "applicantName",  limit: 300,  null: false
    t.string  "projectName",    limit: 300,  null: false
    t.string  "projectBlurb",   limit: 1000, null: false
    t.integer "fundsRequested",              null: false
    t.string  "useOfFunds",     limit: 1000, null: false
  end

  add_index "Project", ["postalCode"], name: "postalCode", using: :btree

  create_table "ProjectWebsite", primary_key: "websiteID", force: true do |t|
    t.integer "projectID",               null: false
    t.string  "siteAddress", limit: 300, null: false
  end

  add_index "ProjectWebsite", ["projectID"], name: "projectID", using: :btree

  create_table "Ratings", primary_key: "ratingID", force: true do |t|
    t.integer "projectID", null: false
    t.integer "infoID",    null: false
    t.integer "rating",    null: false
  end

  add_index "Ratings", ["infoID"], name: "infoID", using: :btree
  add_index "Ratings", ["projectID"], name: "projectID", using: :btree

  create_table "User", primary_key: "userID", force: true do |t|
    t.integer "infoID",    null: false
    t.integer "contactID", null: false
  end

  add_index "User", ["contactID"], name: "contactID", using: :btree
  add_index "User", ["infoID"], name: "infoID", using: :btree

  create_table "admins", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true, using: :btree
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true, using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
