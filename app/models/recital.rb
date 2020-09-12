class Recital < ApplicationRecord
  mount_uploader :poster, PosterUploader
  has_many :programs, dependent: :destroy
  has_many :recital_photos, dependent: :destroy

  scope :plans, -> { where('date >= ?', Date.today).order(date: :asc) }
  scope :pasts, -> { where('date < ?',  Date.today).order(date: :desc) }

  scope :with_photos, -> { joins(:recital_photos) }

  def date
    super.strftime('%Y年%m月%e日')
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
