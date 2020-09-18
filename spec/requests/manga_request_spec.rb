# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Mangas', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/manga/index'
      expect(response).to have_http_status(:success)
    end
  end
end
