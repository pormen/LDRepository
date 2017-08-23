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

ActiveRecord::Schema.define(version: 20170822111718) do

  create_table "areabenefits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "nombre",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "asignarmultiplebeneficios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "trabajador_id"
    t.integer  "centrocosto_id"
    t.integer  "areabenefit_id"
    t.integer  "benefit_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["areabenefit_id"], name: "index_asignarmultiplebeneficios_on_areabenefit_id", using: :btree
    t.index ["benefit_id"], name: "index_asignarmultiplebeneficios_on_benefit_id", using: :btree
    t.index ["centrocosto_id"], name: "index_asignarmultiplebeneficios_on_centrocosto_id", using: :btree
    t.index ["trabajador_id"], name: "index_asignarmultiplebeneficios_on_trabajador_id", using: :btree
  end

  create_table "assignbenefits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "benefit_id"
    t.text     "ruttrabajador",   limit: 65535
    t.text     "rutbeneficiario", limit: 65535
    t.text     "relacion",        limit: 65535
    t.text     "fechanacimiento", limit: 65535
    t.text     "fecha",           limit: 65535
    t.integer  "idobra"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["benefit_id"], name: "index_assignbenefits_on_benefit_id", using: :btree
  end

  create_table "atencionsocials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "nombre",          limit: 65535
    t.text     "apellidopaterno", limit: 65535
    t.text     "apellidomaterno", limit: 65535
    t.text     "rut",             limit: 65535
    t.text     "fecha",           limit: 65535
    t.text     "tipoconsulta",    limit: 65535
    t.integer  "benefit_id"
    t.text     "estado",          limit: 65535
    t.text     "subcontrato",     limit: 65535
    t.text     "obra",            limit: 65535
    t.text     "telefono",        limit: 65535
    t.integer  "atencion"
    t.text     "supervisor",      limit: 65535
    t.text     "descripcion",     limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["benefit_id"], name: "index_atencionsocials_on_benefit_id", using: :btree
  end

  create_table "benefits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "nombre",          limit: 65535
    t.integer  "areabenefit_id"
    t.integer  "costotrabajador"
    t.integer  "costoempresa"
    t.integer  "familia"
    t.integer  "asistencia"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["areabenefit_id"], name: "index_benefits_on_areabenefit_id", using: :btree
  end

  create_table "centrocostos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "codigo",     limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "familiartrabajadors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "rut",             limit: 65535
    t.text     "nombre",          limit: 65535
    t.text     "relacion",        limit: 65535
    t.integer  "trabajador_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.text     "fechanacimiento", limit: 65535
    t.index ["trabajador_id"], name: "index_familiartrabajadors_on_trabajador_id", using: :btree
  end

  create_table "logbenefits", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "assignbenefit_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.index ["assignbenefit_id"], name: "index_logbenefits_on_assignbenefit_id", using: :btree
  end

  create_table "logbenefitsfinals", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "areabeneficio",         limit: 65535
    t.text     "nombrebeneficio",       limit: 65535
    t.text     "costoempresa",          limit: 65535
    t.text     "costotrabajador",       limit: 65535
    t.text     "ruttrabajador",         limit: 65535
    t.text     "nombretrabajador",      limit: 65535
    t.text     "rutbeneficiario",       limit: 65535
    t.text     "nombrebeneficiario",    limit: 65535
    t.text     "relacion",              limit: 65535
    t.text     "nombreobra",            limit: 65535
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "asistebeneficio"
    t.integer  "Idasignacionbeneficio"
  end

  create_table "trabajadors", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.text     "nombre",             limit: 65535
    t.text     "rut",                limit: 65535
    t.integer  "centrocosto_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.text     "activo",             limit: 65535
    t.text     "estado",             limit: 65535
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.index ["centrocosto_id"], name: "index_trabajadors_on_centrocosto_id", using: :btree
  end

  add_foreign_key "asignarmultiplebeneficios", "areabenefits"
  add_foreign_key "asignarmultiplebeneficios", "benefits"
  add_foreign_key "asignarmultiplebeneficios", "centrocostos"
  add_foreign_key "asignarmultiplebeneficios", "trabajadors"
  add_foreign_key "assignbenefits", "benefits"
  add_foreign_key "atencionsocials", "benefits"
  add_foreign_key "benefits", "areabenefits"
  add_foreign_key "familiartrabajadors", "trabajadors"
  add_foreign_key "logbenefits", "assignbenefits"
  add_foreign_key "trabajadors", "centrocostos"
end
