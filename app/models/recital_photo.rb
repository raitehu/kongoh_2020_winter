# frozen_string_literal: true

class RecitalPhoto < ApplicationRecord
  belongs_to :recital

  validates :name, presence: true
  validates :image, presence: true
end
