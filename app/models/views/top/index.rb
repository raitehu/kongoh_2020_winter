class Views::Top::Index < Views::BaseViewModel
  def headline_topics
    [
      '京大金剛会はいつでも新入生を待っています',
      'まずはお気軽にご連絡ください！'
    ]
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

  ########################################
  #              連絡手段                 #
  ########################################
  # メール
  def mail_all
    Settings.contact_means.select{ |cm| cm.type == 'mail'}
  end

  # SNS
  def sns_all
    Settings.contact_means.select{ |cm| cm.type == 'sns'}
  end

  ########################################
  #              公演予定                 #
  ########################################
  # 公演予定タイトル
  def recital_plans_title
    '公演予定'
  end

  # 公演予定の一括取得
  def recital_plans
    @recital_plans ||= Recital.plans
  end
end
