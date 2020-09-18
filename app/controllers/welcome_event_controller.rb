# frozen_string_literal: true

class WelcomeEventController < ApplicationController
  def index
    @view = Views::WelcomeEvent::Index.new
  end
end
