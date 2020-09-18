# frozen_string_literal: true

class CreateRecitals < ActiveRecord::Migration[6.0]
  def change
    create_table :recitals do |t|
      t.string :name, presence: true
      t.date :date
      t.time :opening_time
      t.time :starting_time
      t.string :site
      t.text :description
      t.string :poster

      t.timestamps
    end
  end
end
