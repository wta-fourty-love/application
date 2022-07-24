# frozen_string_literal: true

RSpec.describe SeasonsController do
  describe 'POST #add' do
    subject { post :add, params: }

    it 'returns 200' do
      expect(response).to have_http_status(200)
    end
  end
end
