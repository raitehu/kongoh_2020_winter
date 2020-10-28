# frozen_string_literal: true

module Views
  module Management
    class Link < Views::Management::Root
      attr_accessor :id

      def post_url
        { link: "/management/link/#{id}" }
      end

      def edit?
        true
      end
    end
  end
end
