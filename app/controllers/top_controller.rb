# frozen_string_literal: true

class TopController < ApplicationController
  def index
    @view = Views::Top::Index.new
  end
end
