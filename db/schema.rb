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

ActiveRecord::Schema.define(version: 20150807120313) do

  create_table "author_organizations", force: :cascade do |t|
    t.integer  "author_id"
    t.integer  "organization_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "author_organizations", ["author_id"], name: "index_author_organizations_on_author_id"
  add_index "author_organizations", ["organization_id"], name: "index_author_organizations_on_organization_id"

  create_table "authors", force: :cascade do |t|
    t.string   "name"
    t.string   "kana"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "book_authors", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "book_authors", ["author_id"], name: "index_book_authors_on_author_id"
  add_index "book_authors", ["book_id"], name: "index_book_authors_on_book_id"

  create_table "book_tags", force: :cascade do |t|
    t.integer  "book_id"
    t.integer  "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "book_tags", ["book_id"], name: "index_book_tags_on_book_id"
  add_index "book_tags", ["tag_id"], name: "index_book_tags_on_tag_id"

  create_table "books", force: :cascade do |t|
    t.string   "name"
    t.date     "published_on"
    t.integer  "price"
    t.string   "link_str"
    t.string   "link_pic"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
