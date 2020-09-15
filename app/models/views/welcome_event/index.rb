class Views::WelcomeEvent::Index < Views::BaseViewModel
  def page_title
    ' | 新刊情報'
  end

  def optional_stylesheets
    css = super
    css << 'title_area'
    css << 'contacts'
    css << 'welcome_event'

    css
  end

  def h1
    '新歓情報'
  end

  ########################################
  #              新歓予定                 #
  ########################################
  def event_plan_exists?
    welcome_event_plans.present?
  end

  def welcome_event_plans_title
    '新歓予定'
  end

  def welcome_event_plans
    @welcome_event_plans ||= WelcomeEvent.plans
  end

  # 公開OKかつこれからのイベントのある月だけをDate型の配列で返す
  def event_months_array
    @event_month ||= event_plans.plans
                                .map { |plan| plan.date.beginning_of_month }
                                .uniq
  end

  def event_date
    @event_date ||= event_plans.plans
                               .map { |plan| plan.date }
                               .uniq
  end

  def event_plans
    @event_plans ||= EachEvent.plans
  end

  def events_in_the_month(event_date)
    month_range = (event_date.beginning_of_month)..(event_date.end_of_month)
    EachEvent.events_in_the_month(month_range)
  end
end
