# frozen_string_literal: true

module Views
  module RecitalPlan
    class Index < Views::BaseViewModel
      def page_title
        ' | 公演予定'
      end

      def optional_stylesheets
        css = super
        css << 'contacts'
        css << 'title_area'
        css << 'recital_plan'

        css
      end

      def h1
        '公演予定'
      end

      ########################################
      #              公演予定                 #
      ########################################
      def recital_plan_exists?
        recital_plans.present?
      end

      # 公演予定の一括取得
      def recital_plans
        @recital_plans ||= Recital.plans
      end
    end
  end
end
