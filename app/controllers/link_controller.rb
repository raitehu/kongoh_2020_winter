# frozen_string_literal: true

class LinkController < ApplicationController
  def index
    @view = Views::Link::Index.new
  end
end
