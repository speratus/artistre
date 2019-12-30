# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_12_30_193336) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string "name"
    t.string "user_name"
    t.string "hometown"
    t.string "password_digest"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "artist_id"
    t.integer "studio_id"
    t.date "appointment"
  end

  create_table "studios", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

end
