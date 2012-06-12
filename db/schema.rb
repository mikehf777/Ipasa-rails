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

ActiveRecord::Schema.define(:version => 20120612172301) do

  create_table "documents", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "duties", :force => true do |t|
    t.date     "fecha"
    t.float    "monto"
    t.integer  "property_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "invoices", :force => true do |t|
    t.string   "folio"
    t.float    "monto"
    t.date     "fecha_vencimiento"
    t.integer  "rent_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "lease_structures", :force => true do |t|
    t.integer  "structure_id"
    t.integer  "cantidad"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "leases", :force => true do |t|
    t.integer  "num_int"
    t.boolean  "status_renta"
    t.integer  "type_id"
    t.float    "precio"
    t.text     "descripcion"
    t.integer  "property_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "localities", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pictures", :force => true do |t|
    t.string   "picture_file_name"
    t.string   "picture_content_type"
    t.integer  "picture_file_size"
    t.datetime "picture_upload_date"
    t.string   "picture_descripcion"
    t.integer  "property_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "profiles", :force => true do |t|
    t.string   "nombre"
    t.string   "descripcion"
    t.integer  "type_id"
    t.integer  "property_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "properties", :force => true do |t|
    t.integer  "locality_id"
    t.integer  "user_id"
    t.string   "nombre"
    t.string   "propietario"
    t.integer  "num_ext"
    t.text     "direccion"
    t.string   "google"
    t.text     "descripcion"
    t.boolean  "ofertada"
    t.string   "catastro"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "clave"
  end

  create_table "property_services", :force => true do |t|
    t.integer  "property_id"
    t.integer  "service_id"
    t.float    "costo"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rent_documents", :force => true do |t|
    t.integer  "rent_id"
    t.integer  "document_id"
    t.string   "url"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "rents", :force => true do |t|
    t.integer  "leaseuser_id"
    t.date     "fecha_inicio"
    t.date     "fecha_fin"
    t.float    "descuento"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "services", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "structures", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "surcharges", :force => true do |t|
    t.string   "folio"
    t.float    "monto"
    t.integer  "invoice_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "videos", :force => true do |t|
    t.string   "url"
    t.integer  "property_id"
    t.text     "descripcion"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
