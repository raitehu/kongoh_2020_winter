require 'rails_helper'

RSpec.describe 'Links', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/link/index'
      expect(response).to have_http_status(:success)
    end
  end
end
