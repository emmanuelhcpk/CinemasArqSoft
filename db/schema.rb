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

ActiveRecord::Schema.define(version: 20150211021849) do

  create_table "carteleras", force: true do |t|
    t.datetime "fecha_inicial"
    t.datetime "fecha_final"
    t.string   "tipo_visualizacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sede_id"
    t.integer  "pelicula_id"
  end

  create_table "ciudads", force: true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "cartelera_id"
    t.integer  "sala_id"
    t.datetime "fecha"
  end

  create_table "peliculas", force: true do |t|
    t.string   "nombre"
    t.string   "nombre_director"
    t.string   "descripcion"
    t.integer  "duracion"
    t.string   "genero"
    t.string   "idioma"
    t.string   "clasificacion"
    t.boolean  "subtitulada"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "poster"
  end

  create_table "reservas", force: true do |t|
    t.datetime "fecha_hora"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "asistente_id"
    t.integer  "silla_reservada_id"
    t.integer  "funcion_id"
  end

  create_table "salas", force: true do |t|
    t.integer  "nro_sala"
    t.integer  "capacidad"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sede_id"
  end

  create_table "sedes", force: true do |t|
    t.string   "descripcion"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ciudad_id"
  end

  create_table "sillas", force: true do |t|
    t.boolean  "tipo_silla"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "sala_id"
  end

  create_table "socios", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nombre"
    t.string   "cedula"
    t.string   "edad"
    t.string   "telefono"
    t.boolean  "admin",                  default: false
  end

  add_index "socios", ["email"], name: "index_socios_on_email", unique: true
  add_index "socios", ["reset_password_token"], name: "index_socios_on_reset_password_token", unique: true

end
