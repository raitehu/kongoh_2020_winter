# frozen_string_literal: true

class Recital < ApplicationRecord
  mount_uploader :poster, PosterUploader
  has_many :programs, dependent: :destroy
  has_many :recital_photos, dependent: :destroy
  accepts_nested_attributes_for :programs, allow_destroy: true
  accepts_nested_attributes_for :recital_photos, allow_destroy: true

  validates :name, presence: true

  extend DateTimeConcern

  scope :order_by_date, -> { order(date: :desc) }
  scope :plans, -> { where('date >= ?', Date.today).order(date: :asc) }
  scope :pasts, -> { where('date < ?',  Date.today).order(date: :desc) }
  scope :in_fiscal_year, ->(year) { where(date: fiscal_year_range(year)).order(date: :desc) }

  scope :latest_year, -> { order(date: :desc).first.date.year }
  scope :oldest_year, -> { order(date: :asc).first.date.year }

  scope :with_photos, -> { joins(:recital_photos) }

  def str_date
    return '未定' if date.blank?

    date.strftime('%Y年%m月%e日')
  end

  def opening_time
    return '未定' if super.blank?

    super.strftime('%R')
  end

  def starting_time
    return '未定' if super.blank?

    super.strftime('%R')
  end
end
