# frozen_string_literal: true

class Management::WelcomeEventController < ApplicationController
  def create
    welcome_event = WelcomeEvent.new(welcome_event_params)

    if welcome_event.save
      #TODO: flash message
      redirect_to management_root_path
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end

  def edit
    target_event
  end

  def update
    if target_event.update(welcome_event_params)
      #TODO: flash message
      redirect_to management_root_path
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end

  def destroy
    if target_event.destroy
      #TODO: flash message
      redirect_to management_root_path
    else
      #TODO: flash message
      redirect_to management_root_path
    end
  end


  private
  def target_event
    WelcomeEvent.find_by_id(params[:id])
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