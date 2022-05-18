require 'rails_helper'

RSpec.describe 'Recipes', type: :request do
  describe 'GET /index' do
    it 'returns http success' do
      get '/recipes'
      expect(response).to have_http_status(302)
    end
  end
end
