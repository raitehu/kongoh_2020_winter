# frozen_string_literal: true

class WelcomeEventController < ApplicationController
  def index
    @view = Views::WelcomeEvent::Index.new
  end

  def create
    
  end

  def welcome_event_params
    params.require(:welcome_event)
          .permit(
                   :id,
                   :name,
                   :is_published,
                   :description,
                   each_events_attributes: [
                     :date,
                     :starting_time,
                     :ending_time,
                     :site,
                     :description,
                     :is_online
                   ]
                 )
  end
end
