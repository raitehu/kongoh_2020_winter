class Views::Top::Index < Views::BaseViewModel
  def headline_topics
    [
      '京大金剛会はいつでも新入生を待っています',
      'まずはお気軽にご連絡ください！'
    ]
  end

  def welcome_events
    
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
