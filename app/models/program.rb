# frozen_string_literal: false

class Program < ApplicationRecord
  belongs_to :recital

  validates :performance_type, presence: true
  validates :name, presence: true

  def text
    html_text = ''
    html_text << performance_type
    html_text << '「'
    html_text << name
    html_text << "<span class='optional_note'>#{optional_note}</span>" if optional_note.present?
    html_text << '」'
  end
end
