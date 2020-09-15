class Views::Link::Index < Views::BaseViewModel
  def page_title
    ' | リンク'
  end

  def optional_stylesheets
    css = super
    css << 'title_area'
    css << 'contacts'
    css << 'recital_record'

    css
  end

  def h1
    'リンク'
  end
end
