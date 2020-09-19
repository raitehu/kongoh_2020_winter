# frozen_string_literal: true

module Views
  module Link
    class Index < Views::BaseViewModel
      def page_title
        ' | リンク'
      end

      def optional_stylesheets
        css = super
        css << 'title_area'
        css << 'contacts'
        css << 'link'

        css
      end

      def h1
        'リンク'
      end

      def link_types
        @link_types ||= ::Link.types
      end

      def links_group_by_type
        @links_group_by_type = {}
        link_types.each do |link_type|
          @links_group_by_type.store(link_type, ::Link.links_find_by_type(link_type))
        end
        @links_group_by_type
      end
    end
  end
end
