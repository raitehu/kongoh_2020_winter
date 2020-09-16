class Views::Management::Index < Views::BaseViewModel
  def page_title
    ' | 管理画面'
  end

  def optional_stylesheets
    css = super
    css << 'title_area'
    css << 'management'

    css
  end

  def h1
    '管理画面'
  end

  def welcome_event_all
    WelcomeEvent.all
  end

  def recital_all
    Recital.all
  end

  def commentary_all
    Commentary.all
  end

  def link_all
    Link.all
  end
end