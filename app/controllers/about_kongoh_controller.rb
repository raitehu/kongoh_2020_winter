# frozen_string_literal: true

class AboutKongohController < ApplicationController
  def index
    @view = Views::AboutKongoh::Index.new
  end
end
