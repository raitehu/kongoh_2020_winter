require 'rails_helper'

RSpec.describe 'AboutKongohs', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/about_kongoh/index'
      expect(response).to have_http_status(:success)
    end
  end
end
