# frozen_string_literal: true

class CreateLinks < ActiveRecord::Migration[6.0]
  def change
    create_table :links do |t|
      t.string :url
      t.string :title
      t.string :school
      t.string :link_type

      t.timestamps
    end
  end
end
