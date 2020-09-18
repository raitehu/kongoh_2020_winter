# frozen_string_literal: true

class CreateWelcomeEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :welcome_events do |t|
      t.string :name
      t.text :description
      t.boolean :is_published

      t.timestamps
    end
  end
end
