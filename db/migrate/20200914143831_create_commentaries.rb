class CreateCommentaries < ActiveRecord::Migration[6.0]
  def change
    create_table :commentaries do |t|
      t.string :heading
      t.text :content
      t.integer :priority

      t.timestamps
    end
  end
end
