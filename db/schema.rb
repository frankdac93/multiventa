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

ActiveRecord::Schema.define(version: 20160317170030) do

  create_table "agents", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "firstName",  limit: 255
    t.string   "lastName",   limit: 255
    t.string   "cellphone",  limit: 255
    t.string   "email",      limit: 255
    t.boolean  "isActive"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "products", force: :cascade do |t|
    t.string   "codeProduct",  limit: 255
    t.integer  "codeProvider", limit: 4
    t.string   "description",  limit: 255
    t.string   "details",      limit: 255
    t.integer  "category",     limit: 4
    t.integer  "subcategory",  limit: 4
    t.string   "image",        limit: 255
    t.decimal  "price1",                   precision: 10
    t.decimal  "price2",                   precision: 10
    t.decimal  "price3",                   precision: 10
    t.decimal  "cost",                     precision: 10
    t.boolean  "isActive"
    t.boolean  "isExcent"
    t.boolean  "isInventary"
    t.decimal  "inventary",                precision: 10
    t.string   "unitSize",     limit: 255
    t.date     "expiredDate"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "providers", force: :cascade do |t|
    t.string   "company",    limit: 255
    t.integer  "agent",      limit: 4
    t.string   "cellphone",  limit: 255
    t.string   "fax",        limit: 255
    t.string   "email",      limit: 255
    t.string   "website",    limit: 255
    t.boolean  "isActive"
    t.integer  "payType",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "subcategories", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

end
