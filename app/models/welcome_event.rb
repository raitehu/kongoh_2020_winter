# frozen_string_literal: true

class WelcomeEvent < ApplicationRecord
  has_many :each_events, dependent: :destroy

  scope :plans, lambda {
                  with_each_events.where('date >= ?', Date.today)
                                  .where(is_published: true)
                                  .order_by_date
                                  .distinct
                }

  scope :with_each_events, -> { joins(:each_events) }

  def publish_status
    is_published ? '公開中' : '非公開'
  end
end
