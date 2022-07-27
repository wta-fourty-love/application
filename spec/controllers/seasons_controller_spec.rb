# frozen_string_literal: true

RSpec.describe SeasonsController do
  describe 'POST #create' do
    subject { post :create, params: }

    it 'returns 200' do
      expect(response).to have_http_status(200)
    end
  end
end
