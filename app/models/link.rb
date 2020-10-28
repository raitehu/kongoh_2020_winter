# frozen_string_literal: false

class Link < ApplicationRecord
  scope :types, -> { select(:link_type).map(&:link_type).uniq }
  scope :links_find_by_type, ->(type) { where(link_type: type) }

  validates :url, presence: true
  validates :title, presence: true
  validates :link_type, presence: true

  def link_text
    text = ''
    text << "<span class='school'>[#{school}]</span> " if school.present?
    text << title
  end
end
