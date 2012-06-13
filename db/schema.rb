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

ActiveRecord::Schema.define(:version => 20120613091942) do

  create_table "barrios", :force => true do |t|
    t.string   "Nombre"
    t.string   "Abreviacion"
    t.boolean  "Estado"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "estado_clientes", :force => true do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.boolean  "Estado"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.integer  "transitionCliente_id"
  end

  create_table "estado_cobros", :force => true do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.boolean  "Estado"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "transitionCobro_id"
  end

  create_table "estado_odts", :force => true do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.boolean  "Estado"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "transitionODT_id"
  end

  create_table "estado_pagos", :force => true do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.boolean  "Estado"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "transitionPago_id"
  end

  create_table "identificacions", :force => true do |t|
    t.string   "TipoIdentificacion"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "personerium_id"
  end

  create_table "logs", :force => true do |t|
    t.string   "NombreTable"
    t.string   "CampoAfectado"
    t.string   "ValorAnterior"
    t.string   "ValorActual"
    t.date     "Fecha"
    t.time     "Hora"
    t.string   "Usuario"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "parametros_generales", :force => true do |t|
    t.decimal  "Descuento"
    t.decimal  "ISV"
    t.date     "FechaBackup"
    t.date     "FechaCorte"
    t.date     "FechaPago"
    t.time     "HoraBackup"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "perfils", :force => true do |t|
    t.string   "Nombre"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.text     "Descripcion"
  end

  create_table "perfils_permisos", :id => false, :force => true do |t|
    t.integer "perfil_id"
    t.integer "permiso_id"
  end

  create_table "permisos", :force => true do |t|
    t.string   "Nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "perfil_id"
  end

  create_table "personeria", :force => true do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.boolean  "Estado"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "prioridads", :force => true do |t|
    t.string   "Nombre"
    t.text     "Descripcion"
    t.boolean  "Estado"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "servicios", :force => true do |t|
    t.string   "Nombre"
    t.decimal  "CostoInstalacion"
    t.decimal  "PrecioMensual"
    t.text     "Descripcion"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "trabajos", :force => true do |t|
    t.string   "Trabajo"
    t.text     "Descripcion"
    t.boolean  "Estado"
    t.boolean  "Pago"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
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
    t.integer  "perfil_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
