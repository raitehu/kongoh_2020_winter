# frozen_string_literal: true

module Views
  module Management
    class WelcomeEvent < Views::Management::Root
      attr_accessor :id

      def post_url
        { welcome_event: "/management/welcome_event/#{id}" }
      end

      def edit?
        true
      end
    end
  end
end
