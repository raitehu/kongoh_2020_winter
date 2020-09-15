class Views::AboutKongoh::Index < Views::BaseViewModel
  def page_title
    ' | 京大金剛会について'
  end

  def optional_stylesheets
    css = super
    css << 'title_area'
    css << 'contacts'
    css << 'about_kongoh'

    css
  end

  def h1
    %w[京大金剛会 について]
  end

  def commentaries
    Commentary.all_order_by_priority
  end
end
