require 'spec_helper'

describe Api::V1::ShipsController do
  let!(:ship) { create(:ship) }

  describe 'GET #index' do

    before { get :index }

    it 'returns a collection of ships objects' do
      expect(response.body).to eq Ship.all.to_json
    end
  end

  describe 'GET #show' do
    before { get :show, id: ship.id }

    it 'returns a JSON object of the specified ship' do
      expect(response.body).to eq ship.to_json
    end
  end

  describe 'PUT #update' do
    let(:params) do
      {

        id: ship.id,
        ship: {
          code: 'NAV500'
        }
      }
    end

    it 'updates the given ship' do
      expect { put :edit, params }.to change{ ship.reload.code }
    end
  end
end
