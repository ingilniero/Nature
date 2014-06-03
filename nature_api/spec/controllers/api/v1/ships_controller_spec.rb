require 'spec_helper'

describe Api::V1::ShipsController do
  describe 'GET #index' do
    let!(:ship) { create(:ship) }

    before { get :index }

    it 'returns a collection of ships objects' do
      expect(response.body).to eq Ship.all.to_json
    end
  end
end
