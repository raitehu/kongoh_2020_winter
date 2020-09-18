# frozen_string_literal: true

module Views
  module Management
    class Index < Views::BaseViewModel
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
        Recital.order_by_date
      end

      def commentary_all
        Commentary.all_order_by_priority
      end

      def link_all
        Link.all
      end
    end
  end
end
