# frozen_string_literal: true

module Views
  module Management
    class Recital < Views::Management::Root
      attr_accessor :id

      def post_url
        { recital: "/management/recital/#{id}" }
      end

      def edit?
        true
      end
    end
  end
end
