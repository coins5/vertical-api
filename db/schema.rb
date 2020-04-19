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

ActiveRecord::Schema.define(version: 2020_04_19_185443) do

  create_table "exams", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "tipo_examen"
    t.string "name"
    t.string "description"
    t.integer "minimo"
    t.integer "promedio"
    t.integer "maximo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sedes", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "nombre"
    t.string "distrito"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_exams", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.date "fecha"
    t.integer "puntaje"
    t.bigint "user_id", null: false
    t.bigint "exam_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["exam_id"], name: "index_user_exams_on_exam_id"
    t.index ["user_id"], name: "index_user_exams_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=latin1", force: :cascade do |t|
    t.string "tipo_usuario"
    t.string "nombres"
    t.string "apellidos"
    t.string "direccion"
    t.string "distrito"
    t.string "tipo_documento"
    t.string "numero_documento"
    t.date "fecha_nacimiento"
    t.date "fecha_inicio"
    t.integer "talla"
    t.decimal "peso", precision: 10
    t.string "sexo"
    t.boolean "esta_en_escalada"
    t.boolean "esta_en_entrenamiento"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "user_exams", "exams"
  add_foreign_key "user_exams", "users"
end
