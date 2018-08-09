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

ActiveRecord::Schema.define(version: 20180809191537) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencias", force: :cascade do |t|
    t.string "nome_agencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bancos", force: :cascade do |t|
    t.string "nome_banco"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cargos", force: :cascade do |t|
    t.string "cargo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cargos_funcionarios", force: :cascade do |t|
    t.bigint "cargo_id"
    t.bigint "funcionario_id"
    t.index ["cargo_id"], name: "index_cargos_funcionarios_on_cargo_id"
    t.index ["funcionario_id"], name: "index_cargos_funcionarios_on_funcionario_id"
  end

  create_table "dados_bancarios", force: :cascade do |t|
    t.string "conta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "funcionarios", force: :cascade do |t|
    t.integer "cpf"
    t.string "nome"
    t.float "salario"
    t.date "data_nasc"
    t.string "login"
    t.string "senha"
    t.integer "cep"
    t.string "logradouro"
    t.integer "num_logradouro"
    t.string "bairro"
    t.string "cidade"
    t.string "uf"
    t.string "pais"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "setors", force: :cascade do |t|
    t.string "setor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
