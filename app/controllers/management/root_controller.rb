# frozen_string_literal: true

class Management::RootController < ApplicationController
  def index
    @view = Views::Management::Root.new
    @welcome_event = ::WelcomeEvent.new
    @welcome_event.each_events.build
  end
end
