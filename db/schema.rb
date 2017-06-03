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

ActiveRecord::Schema.define(version: 20170602082850) do

  create_table "choice_questions", force: :cascade do |t|
    t.text     "title"
    t.string   "option_a"
    t.string   "option_b"
    t.string   "option_c"
    t.string   "option_d"
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.boolean  "right_answer_a", default: false
    t.boolean  "right_answer_b", default: false
    t.boolean  "right_answer_c", default: false
    t.boolean  "right_answer_d", default: false
  end

  create_table "exam_papers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "choicequestion_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.boolean  "examinee_answer_a",  default: false
    t.boolean  "examinee_answer_b",  default: false
    t.boolean  "examinee_answer_c",  default: false
    t.boolean  "examinee_answer_d",  default: false
    t.integer  "choice_question_id"
  end

end
