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
    context 'on valid data' do
      let(:params) do
        {

          id: ship.id,
          ship: {
            number: 2
          }
        }
      end

      it 'updates the given ship' do
        expect { put :edit, params }.to change { ship.reload.number }
      end
    end

    context 'on invalid data' do
      let(:params) do
        {
          id: ship.id,
          ship: {
            number: nil
          }
        }
      end

      before { put :edit, params }

      it 'does not update the given resource' do
        expect(ship.reload.number).to eq ship.number
      end

      it 'returns an unprocessable entity status code' do
        expect(response.status).to eq 422
      end
    end
  end
end
