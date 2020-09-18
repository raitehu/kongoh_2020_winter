# frozen_string_literal: true

class ManagementController < ApplicationController
  def index
    @view = Views::Management::Index.new
  end
end
