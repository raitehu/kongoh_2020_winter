class Views::RecitalRecord::Index < Views::BaseViewModel
  def page_title
    ' | 公演記録'
  end

  def optional_stylesheets
    css = super
    css << 'title_area'
    css << 'contacts'
    css << 'recital_record'

    css
  end

  def h1
    '公演記録'
  end

  def recital_record_groups_by_year
    oldest_year = Recital.oldest_year
    latest_year = Recital.latest_year
    year_range  = latest_year.downto(oldest_year)
    recital_record_groups_by_year = {}

    year_range.each do |year|
      recital_in_fiscal_year = Recital.pasts.in_fiscal_year(year)
      recital_record_groups_by_year.store(year.to_s, recital_in_fiscal_year) if recital_in_fiscal_year.present?
    end
    recital_record_groups_by_year
  end
end
