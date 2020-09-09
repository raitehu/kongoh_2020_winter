class CreatePrograms < ActiveRecord::Migration[6.0]
  def change
    create_table :programs do |t|
      t.string :name, presence: true
      t.string :type
      t.string :optional_note
      t.references :recital, null: false, foreign_key: true

      t.timestamps
    end
  end
end
