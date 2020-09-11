class Views::BaseViewModel
  include ActiveModel::Model
  include ApplicationHelper

  def page_title
    ''
  end

  def optional_stylesheets
    []
  end
end
