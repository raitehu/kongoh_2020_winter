class RecitalRecordController < ApplicationController
  def index
    @view = Views::RecitalRecord::Index.new
  end
end
