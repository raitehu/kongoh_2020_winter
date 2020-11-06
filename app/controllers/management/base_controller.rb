# frozen_string_literal: true

class Management::BaseController < ApplicationController
  before_action :authenticate_member!

  private

  def authenticate_member!
    super
    redirect_to new_member_session_path unless current_member.present? && current_member.is_administrator
  end
end
