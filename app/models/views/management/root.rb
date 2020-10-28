# frozen_string_literal: true

module Views
  module Management
    class Root < Views::BaseViewModel
      def page_title
        ' | 管理画面'
      end

      def optional_stylesheets
        css = super
        css << 'title_area'
        css << 'management'
        #css << 'modal'

        css
      end

      def h1
        '管理画面'
      end

      def modal_forms_name
        %w[welcome_event_form recital_form commentary_form link_form].map{|a| 'management/forms/' + a}
      end

      def post_url
        {
          welcome_event: '/management/welcome_event',
          recital:       '/management/recital',
          commentary:    '/management/commentary',
          link:          '/management/link'
        }
      end

      def edit?
        false
      end

      def welcome_event_all
        ::WelcomeEvent.all
      end

      def recital_all
        ::Recital.order_by_date
      end

      def commentary_all
        ::Commentary.all_order_by_priority
      end

      def link_all
        ::Link.all
      end

      def welcome_event_new
        ::WelcomeEvent.new
      end

      def each_event_new
        ::EachEvent.new
      end

      def welcome_event_edit event_id
        Services::WelcomeEvent.find(event_id)
      end
    end
  end
end
