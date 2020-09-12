class WelcomeEventController < ApplicationController
  def index
    @view = Views::WelcomeEvent::Index.new
  end
end
