# frozen_string_literal: true

module Views
  module Management
    class Commentary < Views::Management::Root
      attr_accessor :id

      def post_url
        { commentary: "/management/commentary/#{id}" }
      end

      def edit?
        true
      end
    end
  end
end
