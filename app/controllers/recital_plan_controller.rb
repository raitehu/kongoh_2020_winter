# frozen_string_literal: true

class RecitalPlanController < ApplicationController
  def index
    @view = Views::RecitalPlan::Index.new
  end
end
