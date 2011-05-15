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

ActiveRecord::Schema.define(:version => 20110515062453) do

  create_table "clips", :force => true do |t|
    t.integer  "sound_id"
    t.string   "attachment_file_name"
    t.string   "attachment_content_type"
    t.integer  "attachment_file_size"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiment_group_prototypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "experiment_prototypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "experiment_group_prototype_id"
  end

  create_table "experiments", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "experiment_prototype_id"
  end

  create_table "pair_prototypes", :force => true do |t|
    t.string   "name"
    t.integer  "left_sound_id"
    t.integer  "right_sound_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phase_prototypes", :force => true do |t|
    t.integer  "experiment_prototype_id"
    t.string   "program_prototype_type"
    t.integer  "program_prototype_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phases", :force => true do |t|
    t.integer  "experiment_id"
    t.integer  "phase_prototype_id"
    t.string   "program_type"
    t.integer  "program_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rails_admin_histories", :force => true do |t|
    t.string   "message"
    t.string   "username"
    t.integer  "item"
    t.string   "table"
    t.integer  "month",      :limit => 2
    t.integer  "year",       :limit => 8
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rails_admin_histories", ["item", "table", "month", "year"], :name => "index_histories_on_item_and_table_and_month_and_year"

  create_table "round_prototypes", :force => true do |t|
    t.string   "program_prototype_type"
    t.integer  "program_prototype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pair_prototype_id"
  end

  create_table "sounds", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_program_prototypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_programs", :force => true do |t|
    t.integer  "test_program_prototype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "test_rounds", :force => true do |t|
    t.integer  "test_program_id"
    t.integer  "round_prototype_id"
    t.boolean  "success"
    t.integer  "clip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "guess_id"
  end

  create_table "training_program_prototypes", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "training_programs", :force => true do |t|
    t.integer  "training_program_prototype_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "training_rounds", :force => true do |t|
    t.integer  "training_program_id"
    t.integer  "round_prototype_id"
    t.integer  "left_clip_id"
    t.integer  "right_clip_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "complete"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
