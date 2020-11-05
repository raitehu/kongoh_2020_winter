# frozen_string_literal: true

class Management::BaseController < ApplicationController
  before_action :authenticate_member!

  private

  def authenticate_member!
    if current_member.present? && current_member.is_administrator
      # 管理者向け
    elsif current_member.present?
      # 一般メンバー向け
      redirect_to new_member_session_path
    else
      # 未ログイン
      redirect_to new_member_session_path
    end
  end
end
