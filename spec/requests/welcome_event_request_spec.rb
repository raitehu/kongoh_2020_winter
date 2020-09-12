require 'rails_helper'

RSpec.describe 'WelcomeEvents', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/welcome_event/index'
      expect(response).to have_http_status(:success)
    end
  end
end
