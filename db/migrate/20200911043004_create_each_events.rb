# frozen_string_literal: true

class CreateEachEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :each_events do |t|
      t.date :date
      t.time :starting_time
      t.time :ending_time
      t.string :site
      t.text :description
      t.boolean :is_online
      t.references :welcome_event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
