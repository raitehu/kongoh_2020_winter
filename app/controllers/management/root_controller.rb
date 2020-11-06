# frozen_string_literal: true

class Management::RootController < Management::BaseController
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

  def toggle_auth
    target_member = Member.find_by_id(params[:id])
    if target_member.is_administrator
      target_member.update(is_administrator: false)
    else
      target_member.update(is_administrator: true)
    end
    redirect_to management_root_path
  end
end
