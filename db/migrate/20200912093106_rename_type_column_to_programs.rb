# frozen_string_literal: true

class RenameTypeColumnToPrograms < ActiveRecord::Migration[6.0]
  def change
    rename_column :programs, :type, :performance_type
  end
end
