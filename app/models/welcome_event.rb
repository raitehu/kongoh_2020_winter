# frozen_string_literal: true

class WelcomeEvent < ApplicationRecord
  has_many :each_events, dependent: :destroy
  accepts_nested_attributes_for :each_events, allow_destroy: true

  scope :plans, lambda {
                  with_each_events.where('date >= ?', Date.today)
                                  .where(is_published: true)
                                  .order_by_date
                                  .distinct
                }

  scope :with_each_events, -> { joins(:each_events) }
  scope :order_by_date, -> { order(date: :desc) }

  def publish_status
    is_published ? '公開中' : '非公開'
  end
end
