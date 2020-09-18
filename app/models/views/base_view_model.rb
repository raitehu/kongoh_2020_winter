# frozen_string_literal: true

module Views
  class BaseViewModel
    include ActiveModel::Model
    include ApplicationHelper

    def page_title
      ''
    end

    def optional_stylesheets
      []
    end

    ########################################
    #              連絡手段                 #
    ########################################
    # メール
    def mail_all
      Settings.contact_means.select { |cm| cm.type == 'mail' }
    end

    # SNS
    def sns_all
      Settings.contact_means.select { |cm| cm.type == 'sns' }
    end

    def contact_content
      Settings.views.top.contact.topics
    end
  end
end
