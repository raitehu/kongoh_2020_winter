class Views::RecitalRecord::Index < Views::BaseViewModel
  def page_title
    ' | 公演記録'
  end

  def optional_stylesheets
    css = super
    css << 'top'
    css << 'title_area'
    css << 'contacts'
    css << 'recital_record'

    css
  end

  def h1
    '公演記録'
  end
end
