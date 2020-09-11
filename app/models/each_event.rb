class EachEvent < ApplicationRecord
  belongs_to :welcome_event
  def past_event?
    date < Date.today
  end

  def date_str
    date.strftime("%m月%e日")
  end

  def event_time
    return '詳細未定' if starting_time.blank?

    "#{starting_time.strftime("%R")}～#{ending_time}"
  end

  def ending_time
    return '' if super.blank?
    super.strftime("%R")
  end
end
