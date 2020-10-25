# frozen_string_literal: true

class WelcomeEventController < ApplicationController
  def index
    @view = Views::WelcomeEvent::Index.new
  end

  def create
    welcome_event = WelcomeEvent.new(welcome_event_params)

    if welcome_event.save
      redirect_to management_root_path
    else
      redirect_to management_root_path
    end
  end

  def welcome_event_params
    params.require(:welcome_event)
          .permit(
                   :id,
                   :name,
                   :is_published,
                   :description,
                   each_events_attributes: [
                     :id,
                     :_destroy,
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
