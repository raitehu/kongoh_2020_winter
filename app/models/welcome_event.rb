class WelcomeEvent < ApplicationRecord
  has_many :each_events, dependent: :destroy

  scope :plans, -> { with_each_events.where('date >= ?', Date.today).where(is_published: true).distinct }

  scope :with_each_events, -> { joins(:each_events) }
end
