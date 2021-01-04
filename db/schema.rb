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

ActiveRecord::Schema.define(version: 2021_01_04_174837) do

  create_table "adoptions", force: :cascade do |t|
    t.integer "person_id"
    t.integer "animal_id"
    t.integer "fee"
  end

  create_table "animals", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "breed"
    t.string "personality"
    t.boolean "adopted"
  end

  create_table "appointments", force: :cascade do |t|
    t.integer "person_id"
    t.integer "shelter_id"
    t.string "date"
    t.time "time"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
  end

  create_table "shelters", force: :cascade do |t|
    t.integer "animal_id"
  end

end
