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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20160502175906) do

  create_table "atleta", :force => true do |t|
    t.string   "nombres"
    t.string   "apellidos"
    t.string   "cedula"
    t.string   "telefono"
    t.string   "disciplina"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "audits", :force => true do |t|
    t.integer  "auditable_id"
    t.string   "auditable_type"
    t.integer  "associated_id"
    t.string   "associated_type"
    t.integer  "user_id"
    t.string   "user_type"
    t.string   "username"
    t.string   "action"
    t.text     "audited_changes"
    t.integer  "version",         :default => 0
    t.string   "comment"
    t.string   "remote_address"
    t.datetime "created_at"
  end

  add_index "audits", ["associated_id", "associated_type"], :name => "associated_index"
  add_index "audits", ["auditable_id", "auditable_type"], :name => "auditable_index"
  add_index "audits", ["created_at"], :name => "index_audits_on_created_at"
  add_index "audits", ["user_id", "user_type"], :name => "user_index"

  create_table "becarios_sucre", :id => false, :force => true do |t|
    t.string  "NOMBRE",      :limit => 10
    t.string  "APELLIDO",    :limit => 12
    t.integer "CEDULA"
    t.string  "INSTITUCION", :limit => 27
    t.string  "CARRERA",     :limit => 30
    t.string  "SEMESTRE",    :limit => 4
    t.integer "EDAD"
    t.string  "TELEFONO",    :limit => 14
  end

  create_table "becas", :force => true do |t|
    t.string   "status_beca"
    t.string   "nivel_de"
    t.string   "institucion"
    t.string   "tipo_institucion"
    t.string   "carrera"
    t.string   "duracion"
    t.string   "tipo_estudio"
    t.string   "periodo"
    t.string   "escala"
    t.string   "promedio_actual"
    t.boolean  "beca"
    t.string   "beca_mont"
    t.string   "institucion_beca"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.integer  "estudiante_id"
    t.boolean  "foto"
    t.boolean  "partica_nac"
    t.boolean  "copia_cedula"
    t.boolean  "carta_residencia"
    t.boolean  "constancia_inscripcion"
    t.boolean  "constancia_estudios"
    t.boolean  "record_academico"
    t.boolean  "fondo_negro"
    t.string   "regimen"
    t.string   "tipo_beca"
    t.string   "semestre"
    t.string   "estudio_economico"
    t.boolean  "menosmaterias"
    t.string   "n_cuenta"
  end

  create_table "configuracions", :force => true do |t|
    t.string   "periodo"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "limite_local"
    t.integer  "limite_afuera"
    t.integer  "limite_excelencia"
    t.boolean  "status"
    t.integer  "monto_local"
    t.integer  "monto_afuera"
    t.integer  "monto_excelencia"
  end

  create_table "cuentas", :force => true do |t|
    t.integer  "estudiante_id"
    t.string   "n_cuenta"
    t.string   "monto"
    t.string   "cedula"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "estudiantes", :force => true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "sexo"
    t.integer  "edad"
    t.string   "lugar_nac"
    t.date     "fecha_nac"
    t.string   "nacionalidad"
    t.string   "edo_civil"
    t.text     "direccion"
    t.string   "twitter"
    t.string   "pin"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "cedula"
    t.string   "email"
    t.string   "telf_casa"
    t.string   "telf_trabajo"
    t.string   "telf_movil"
    t.string   "municipio"
    t.string   "estado"
    t.string   "nombre2"
    t.string   "apellido2"
    t.string   "r_nombre1"
    t.string   "r_nombre2"
    t.string   "r_apellido1"
    t.string   "r_apellido2"
    t.string   "r_cedula"
    t.date     "r_fecha_nac"
    t.string   "r_nacionalidad"
    t.string   "r_sexo"
    t.string   "rif"
  end

  create_table "listado", :id => false, :force => true do |t|
    t.string "cedula",  :null => false
    t.string "cuenta",  :null => false
    t.string "nombres", :null => false
  end

  create_table "reclamos", :force => true do |t|
    t.integer  "responsable"
    t.integer  "asignado_por"
    t.integer  "beca_id"
    t.string   "status"
    t.string   "tipo_motivo"
    t.string   "motivo"
    t.text     "solucion"
    t.text     "observacion"
    t.date     "fecha_final"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "username"
    t.string   "roles"
    t.string   "roles_mask"
    t.string   "role"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
