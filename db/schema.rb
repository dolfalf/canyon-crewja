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

ActiveRecord::Schema.define(version: 20150530072550) do

  create_table "addresses", force: :cascade do |t|
    t.string   "post_no1"
    t.string   "post_no2"
    t.string   "kana_1"
    t.string   "kana_2"
    t.string   "kana_3"
    t.string   "kanji_1"
    t.string   "kanji_2"
    t.string   "kanji_3"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "bill_detail_infos", force: :cascade do |t|
    t.integer  "application_id"
    t.integer  "sequence_no"
    t.string   "item_code"
    t.string   "item_name"
    t.string   "item_group_code"
    t.decimal  "sale_price"
    t.decimal  "quantity"
    t.decimal  "amount"
    t.date     "input_date"
    t.date     "order_day"
    t.date     "service_day"
    t.string   "recept_person"
    t.integer  "bill_flag"
    t.date     "pay_day"
    t.integer  "display_flag"
    t.integer  "check_flag"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "bill_head_infos", force: :cascade do |t|
    t.integer  "payment"
    t.date     "payday"
    t.date     "print_day"
    t.integer  "print_count"
    t.date     "auto_print_day"
    t.integer  "auto_print_count"
    t.decimal  "all_amount"
    t.integer  "unpaid_flag"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "branch_infos", force: :cascade do |t|
    t.string   "branch_name"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "course_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "inquiries", force: :cascade do |t|
    t.date     "inquiry_date"
    t.string   "inquiry_person"
    t.integer  "inquiry_type"
    t.string   "inquiry_type_etc"
    t.string   "parent_name"
    t.string   "parent_name_kana"
    t.string   "relation"
    t.string   "telephone"
    t.string   "address_zip"
    t.string   "address_prefectures"
    t.string   "address_city"
    t.string   "mobile"
    t.string   "email"
    t.string   "station"
    t.integer  "payment"
    t.string   "pay_account_mark"
    t.string   "pay_account_numner"
    t.string   "pay_owner"
    t.boolean  "course_1"
    t.boolean  "course_2"
    t.boolean  "course_3"
    t.boolean  "course_4"
    t.boolean  "course_5"
    t.boolean  "course_6"
    t.boolean  "course_7"
    t.boolean  "course_8"
    t.boolean  "course_9"
    t.boolean  "course_10"
    t.string   "inquiry_name_1"
    t.string   "inquiry_name_kana_1"
    t.date     "inquiry_birthday_1"
    t.string   "inquiry_age_yearmonth_1"
    t.string   "inquiry_grade_1"
    t.integer  "inquiry_gender_1"
    t.string   "inquiry_name_2"
    t.string   "inquiry_name_kana_2"
    t.date     "inquiry_birthday_2"
    t.string   "inquiry_age_yearmonth_2"
    t.string   "inquiry_grade_2"
    t.integer  "inquiry_gender_2"
    t.string   "inquiry_name_3"
    t.string   "inquiry_name_kana_3"
    t.date     "inquiry_birthday_3"
    t.string   "inquiry_age_yearmonth_3"
    t.string   "inquiry_grade_3"
    t.integer  "inquiry_gender_3"
    t.string   "inquiry_name_4"
    t.string   "inquiry_name_kana_4"
    t.date     "inquiry_birthday_4"
    t.string   "inquiry_age_yearmonth_4"
    t.string   "inquiry_grade_4"
    t.integer  "inquiry_gender_4"
    t.string   "inquiry_name_5"
    t.string   "inquiry_name_kana_5"
    t.date     "inquiry_birthday_5"
    t.string   "inquiry_age_yearmonth_5"
    t.string   "inquiry_grade_5"
    t.integer  "inquiry_gender_5"
    t.boolean  "inquiry_data"
    t.datetime "send_date"
    t.boolean  "inquiry_experience"
    t.datetime "experience_date"
    t.boolean  "inquiry_explanation"
    t.datetime "explanation_date"
    t.boolean  "inquiry_applicant"
    t.date     "applicant_date"
    t.boolean  "inquiry_other"
    t.string   "inquiry_other_content"
    t.string   "remarks"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "regist_user"
    t.string   "update_user"
    t.integer  "branch_info_id"
  end

  add_index "inquiries", ["branch_info_id"], name: "index_inquiries_on_branch_info_id"

  create_table "item_groups", force: :cascade do |t|
    t.string   "item_group_name"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "items", force: :cascade do |t|
    t.string   "item_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_infos", force: :cascade do |t|
    t.integer  "application_id"
    t.string   "application_name"
    t.date     "application_day"
    t.integer  "sequence_no"
    t.string   "item_code"
    t.string   "item_name"
    t.decimal  "quantity"
    t.date     "input_date"
    t.date     "order_plan_day"
    t.date     "order_action_day"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "prefectures_codes", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_inputs", force: :cascade do |t|
    t.string   "branch_id"
    t.string   "input_id"
    t.integer  "question_group"
    t.string   "question_number"
    t.string   "question_value"
    t.string   "question_comment"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "question_masters", force: :cascade do |t|
    t.integer  "question_group"
    t.string   "question_value"
    t.integer  "show_flg"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "student_cources", force: :cascade do |t|
    t.integer  "sequence_no"
    t.string   "course_id"
    t.datetime "lecture_startdate"
    t.string   "lecture_enddate"
    t.integer  "timetable_week"
    t.integer  "timetabel_time"
    t.string   "class"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "student_courses", force: :cascade do |t|
    t.integer  "sequence_no"
    t.string   "course_id"
    t.datetime "lecture_startdate"
    t.string   "lecture_enddate"
    t.integer  "timetable_week"
    t.integer  "timetabel_time"
    t.string   "class"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "student_infos", force: :cascade do |t|
    t.string   "child_id"
    t.string   "student_name"
    t.string   "student_kana"
    t.integer  "gender"
    t.date     "birthday"
    t.string   "application_age_yearmonth"
    t.date     "pay_date"
    t.date     "entry_date"
    t.integer  "entry_class"
    t.string   "entry_class_base"
    t.date     "leave_date"
    t.integer  "leave_class"
    t.string   "leave_class_base"
    t.string   "link_sibling_id"
    t.integer  "same_enter"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.string   "regist_user"
    t.string   "update_user"
    t.integer  "branch_info_id"
    t.integer  "inquiry_id"
  end

  add_index "student_infos", ["branch_info_id"], name: "index_student_infos_on_branch_info_id"
  add_index "student_infos", ["inquiry_id"], name: "index_student_infos_on_inquiry_id"

  create_table "student_logs", force: :cascade do |t|
    t.string   "branch_id"
    t.string   "student_id"
    t.integer  "sequence_no"
    t.datetime "log_entry_date"
    t.string   "log_entry_contents"
    t.string   "log_engry_person"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "teacher_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "regist_user"
    t.string   "update_user"
  end

  create_table "users", force: :cascade do |t|
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
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true

end
