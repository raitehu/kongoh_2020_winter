# frozen_string_literal: true

class Management::RootController < ApplicationController
  def index
    @view = Views::Management::Root.new
  end
end
