# frozen_string_literal: true

class Management::RootController < ApplicationController
  def index
    @view = Views::Management::Root.new
    @welcome_event = ::WelcomeEvent.new
    @welcome_event.each_events.build

    @recital = ::Recital.new
    @recital.programs.build
    @recital.recital_photos.build

    @commentary = Commentary.new

    @link = Link.new
  end
end
