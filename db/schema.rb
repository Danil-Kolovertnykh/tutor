# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_06_22_202128) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "question_id", null: false, comment: "Ответ к какому вопросу"
    t.string "value", null: false, comment: "Ответ"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "group_missions", force: :cascade do |t|
    t.bigint "group_id", null: false, comment: "Группа"
    t.bigint "mission_id", null: false, comment: "Тест"
    t.string "enabled", null: false, comment: "Вкл/Выкл"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["group_id"], name: "index_group_missions_on_group_id"
    t.index ["mission_id"], name: "index_group_missions_on_mission_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "title", null: false, comment: "Название группы"
    t.string "departament", comment: "Кафедра"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mission_modul_questions", force: :cascade do |t|
    t.bigint "modul_question_id", null: false, comment: "Модуль вопросов"
    t.bigint "mission_id", null: false, comment: "Тест"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mission_id"], name: "index_mission_modul_questions_on_mission_id"
    t.index ["modul_question_id"], name: "index_mission_modul_questions_on_modul_question_id"
  end

  create_table "missions", force: :cascade do |t|
    t.string "title", comment: "Название теста"
    t.boolean "enabled", default: false, comment: "Включен/выключен тест"
    t.bigint "user_id", comment: "Автор теста"
    t.string "instruction", comment: "Инструкция к тесту"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_missions_on_user_id"
  end

  create_table "modul_questions", force: :cascade do |t|
    t.string "title", null: false, comment: "Название модуля вопросов"
    t.bigint "user_id", null: false, comment: "Автор модуля вопросов"
    t.string "instruction", comment: "Инструкция к модулю"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_modul_questions_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "modul_question_id", null: false, comment: "К какому модулю вопросов"
    t.string "value", null: false, comment: "Вопрос"
    t.string "type_question", null: false, comment: "Тип вопроса"
    t.integer "right_answer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["modul_question_id"], name: "index_questions_on_modul_question_id"
  end

  create_table "results", force: :cascade do |t|
    t.bigint "user_id", null: false, comment: "Пользователь"
    t.bigint "mission_id", null: false, comment: "Тест"
    t.string "grade", null: false, comment: "Оценка"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["mission_id"], name: "index_results_on_mission_id"
    t.index ["user_id"], name: "index_results_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.bigint "group_id", default: 1
    t.string "name", comment: "Имя пользователя"
    t.string "surname", comment: "Фамилия пользователя"
    t.string "phone", comment: "Номер телефона"
    t.string "role", default: "student", comment: "Роль пользователя, по дефолту user"
    t.boolean "enabled", default: true, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["group_id"], name: "index_users_on_group_id"
    t.index ["name"], name: "index_users_on_name"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["surname"], name: "index_users_on_surname"
  end

  add_foreign_key "answers", "questions"
  add_foreign_key "group_missions", "groups"
  add_foreign_key "group_missions", "missions"
  add_foreign_key "mission_modul_questions", "missions"
  add_foreign_key "mission_modul_questions", "modul_questions"
  add_foreign_key "missions", "users"
  add_foreign_key "modul_questions", "users"
  add_foreign_key "questions", "modul_questions"
  add_foreign_key "results", "missions"
  add_foreign_key "results", "users"
  add_foreign_key "users", "groups"
end
