# frozen_string_literal: true

class MangaController < ApplicationController
  def index
    @view = Views::Manga::Index.new
  end
end
