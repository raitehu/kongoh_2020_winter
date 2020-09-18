# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_200_916_105_339) do
  create_table 'commentaries', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'heading'
    t.text 'content'
    t.integer 'priority'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'each_events', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.date 'date'
    t.time 'starting_time'
    t.time 'ending_time'
    t.string 'site'
    t.text 'description'
    t.boolean 'is_online'
    t.bigint 'welcome_event_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['welcome_event_id'], name: 'index_each_events_on_welcome_event_id'
  end

  create_table 'links', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'url'
    t.string 'title'
    t.string 'school'
    t.string 'link_type'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'programs', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'name'
    t.string 'performance_type'
    t.string 'optional_note'
    t.bigint 'recital_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['recital_id'], name: 'index_programs_on_recital_id'
  end

  create_table 'recital_photos', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'name'
    t.string 'image'
    t.bigint 'recital_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['recital_id'], name: 'index_recital_photos_on_recital_id'
  end

  create_table 'recitals', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'name'
    t.date 'date'
    t.time 'opening_time'
    t.time 'starting_time'
    t.string 'site'
    t.text 'description'
    t.string 'poster'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'welcome_events', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4', force: :cascade do |t|
    t.string 'name'
    t.text 'description'
    t.boolean 'is_published'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'each_events', 'welcome_events'
  add_foreign_key 'programs', 'recitals'
  add_foreign_key 'recital_photos', 'recitals'
end
