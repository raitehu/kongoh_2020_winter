# frozen_string_literal: true

class Link < ApplicationRecord
  scope :types, -> { select(:link_type).map(&:link_type).uniq }
  scope :links_find_by_type, ->(type) { where(link_type: type) }

  def link_text
    text = ''
    text << "<span class='school'>[#{school}]</span> " if school.present?
    text << title
  end
end
