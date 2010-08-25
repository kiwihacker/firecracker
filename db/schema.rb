# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100824131830) do

  create_table "assignments", :force => true do |t|
    t.integer  "role_id"
    t.integer  "user_id"
    t.integer  "publication_id"
    t.boolean  "active",             :default => true
    t.date     "assigned_date"
    t.date     "deactivated_date"
    t.string   "deactivated_reason"
    t.integer  "assigned_by_user"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", :force => true do |t|
    t.string   "title"
    t.text     "blurb"
    t.text     "body"
    t.integer  "author_source"
    t.integer  "writer_id"
    t.integer  "source_id"
    t.integer  "assigned_to"
    t.boolean  "is_locked"
    t.boolean  "is_published"
    t.date     "published_date"
    t.date     "assigned_date"
    t.text     "log"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "assigner_by"
    t.integer  "assigned_by"
    t.integer  "status_id"
    t.date     "status_change_date"
    t.date     "created_date"
    t.date     "edited_date"
    t.integer  "edited_by"
    t.date     "archived_date"
    t.integer  "archived_by"
    t.date     "cancelled_date"
    t.integer  "cancelled_by"
    t.integer  "category_id_2"
    t.integer  "category_id_3"
    t.integer  "publication_id"
  end

  create_table "publications", :force => true do |t|
    t.string   "pub_name"
    t.string   "pub_name_yomi"
    t.string   "pub_name_eng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "role"
    t.string   "role_j"
    t.string   "desc"
    t.string   "desc_j"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "lname"
    t.string   "fname"
    t.string   "lname_yomi"
    t.string   "fname_yomi"
    t.string   "lname_eng"
    t.string   "fname_eng"
    t.string   "username"
    t.string   "email"
    t.string   "role"
    t.integer  "added_by"
    t.boolean  "locked"
    t.string   "locked_reason"
    t.date     "locked_date"
    t.text     "log"
    t.string   "type"
    t.string   "passwd_encr"
    t.date     "passwd_set"
    t.boolean  "reset_passwd"
    t.date     "last_login"
    t.boolean  "active"
    t.string   "inactive_reason"
    t.date     "inactive_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "salt"
  end

end
