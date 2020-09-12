class RecitalPlanController < ApplicationController
  def index
    @view = Views::RecitalPlan::Index.new
  end
end
