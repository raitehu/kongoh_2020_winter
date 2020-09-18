# frozen_string_literal: true

class Commentary < ApplicationRecord
  scope :all_order_by_priority, -> { all.order(priority: :desc).order(id: :asc) }
end
