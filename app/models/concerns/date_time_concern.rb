module DateTimeConcern
  extend ActiveSupport::Concern

  def fiscal_year_range(year)
    start_day = Date.new(year, 4)
    last_day  = Date.new(year + 1, 3).end_of_month

    start_day..last_day
  end
end
