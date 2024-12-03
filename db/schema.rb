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

ActiveRecord::Schema[7.2].define(version: 2024_12_01_165757) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "logradouro", null: false
    t.string "numero", null: false
    t.string "bairro", null: false
    t.string "cidade", null: false
    t.string "estado", null: false
    t.string "cep", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "proponente_id", null: false
    t.index ["proponente_id"], name: "index_addresses_on_proponente_id"
  end

  create_table "proponentes", force: :cascade do |t|
    t.string "nome", null: false
    t.string "cpf", null: false
    t.date "nascimento", null: false
    t.string "telefone_pessoal"
    t.string "telefone_referencia"
    t.float "salario", null: false
    t.float "desconto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "addresses", "proponentes"
end
