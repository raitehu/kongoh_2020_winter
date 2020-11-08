# frozen_string_literal: true

class RecitalPhoto < ApplicationRecord
  mount_uploader :image, RecitalPhotoUploader
  belongs_to :recital

  validates :name, presence: true
  validates :image, presence: true
end
