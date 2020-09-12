class Views::WelcomeEvent::Index < Views::BaseViewModel
  def page_title
    ' | 新刊情報'
  end

  def optional_stylesheets
    css = super
    css << 'top'
    css << 'title_area'
    css << 'contacts'

    css
  end

  def h1
    '新刊情報'
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

  def event_month
    EachEvent.plans
             .map { |plan| plan.date.beginning_of_month }
             .uniq
  end
end
