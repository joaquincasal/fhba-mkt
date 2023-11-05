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

ActiveRecord::Schema[7.1].define(version: 2023_11_05_185437) do
  create_table "donantes", force: :cascade do |t|
    t.string "tipo_donante"
    t.date "fecha_ultima_donacion"
    t.string "apellidos"
    t.string "nombre"
    t.string "segundo_nombre"
    t.string "tipo_documento"
    t.string "numero_documento"
    t.string "sexo"
    t.date "fecha_nacimiento"
    t.string "direccion"
    t.string "codigo_postal"
    t.string "localidad"
    t.string "provincia"
    t.string "pais"
    t.string "telefono"
    t.string "correo_electronico"
    t.string "ocupacion"
    t.string "grupo_sanguineo"
    t.string "factor"
    t.integer "total_donaciones_hemocentro"
    t.date "fecha_primera_donacion"
    t.string "origen_candidato"
    t.string "institucion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
