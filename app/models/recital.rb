class Recital < ApplicationRecord
  has_many :programs      , dependent: :destroy
  has_many :recital_photos, dependent: :destroy
end
