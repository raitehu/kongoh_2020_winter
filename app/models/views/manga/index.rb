class Views::Manga::Index < Views::BaseViewModel
  def page_title
    ' | 能楽マンガ'
  end

  def optional_stylesheets
    css = super
    css << 'title_area'
    css << 'contacts'
    css << 'recital_record'

    css
  end

  def h1
    '能楽マンガ'
  end
end
