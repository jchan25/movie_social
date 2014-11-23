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

ActiveRecord::Schema.define(version: 20141123005511) do

  create_table "event_attendees", force: true do |t|
    t.integer  "event_id"
    t.integer  "user_id"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "user_ID"
    t.text     "theater_address"
    t.integer  "movie_id"
    t.datetime "datetime"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "name"
  end

  create_table "genres", force: true do |t|
    t.string   "genre_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", force: true do |t|
    t.string   "name"
    t.string   "image_url"
    t.string   "director"
    t.text     "synopsis"
    t.integer  "duration"
    t.date     "release_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "actors"
    t.integer  "genre_id"
  end

  create_table "user_favorited_genres", force: true do |t|
    t.integer  "user_ID"
    t.integer  "genre_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_favorited_movies", force: true do |t|
    t.integer  "user_ID"
    t.integer  "movie_ID"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "username"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "city"
    t.string   "state"
    t.string   "email"
    t.string   "profile_pic_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
