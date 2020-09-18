# frozen_string_literal: true

class CreateRecitalPhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :recital_photos do |t|
      t.string :name, presence: true
      t.string :image, presence: true
      t.references :recital, null: false, foreign_key: true

      t.timestamps
    end
  end
end
