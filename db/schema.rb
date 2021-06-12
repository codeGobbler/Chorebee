# frozen_string_literal: true

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

ActiveRecord::Schema.define(version: 20_210_522_011_148) do
  create_table 'children', force: :cascade do |t|
    t.integer  'child_id', null: false
    t.string   'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.integer  'age'
    t.integer  'chore_id'
    t.index ['chore_id'], name: 'index_children_on_chore_id'
  end

  create_table 'chores', force: :cascade do |t|
    t.integer  'chore_id', null: false
    t.string   'job'
    t.datetime 'created_at',  null: false
    t.datetime 'updated_at',  null: false
    t.text     'description'
    t.integer  'child_id'
    t.index ['child_id'], name: 'index_chores_on_child_id'
  end
end
