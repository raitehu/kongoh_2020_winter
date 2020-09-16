class LinkController < ApplicationController
  def index
    @view = Views::Link::Index.new
  end
end
