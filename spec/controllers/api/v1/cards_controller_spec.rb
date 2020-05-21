require 'rails_helper'
require 'rack/test'

RSpec.describe Api::V1::CardsController, type: :controller do
  let(:card) { create(:card) }

  let(:valid_attributes) {
    { name: card.name, summary: card.summary, full_meaning: card.full_meaning, upright: card.upright, reversed: card.reversed, image_url: card.image_url }
  }

  let(:invalid_attributes) {
    { name: nil, summary: nil, full_meaning: nil, upright: nil, reversed: nil, image_url: nil }
  }

  describe 'GET #index' do
    let!(:card) { create(:card) }

    it 'returns a success response' do
      get :index
      expect(response).to be_successful
      expect(response_json.size).to eq Card.all.size
    end

  end

  describe 'GET #show' do
    let!(:card) { create(:card) }

    it 'returns a success response' do
      get :show, params: { id: card.id }
      expect(response).to be_successful
    end
  end

  describe 'POST #create' do

    context 'with valid params' do
      it 'creates a new card' do
        expect {
          post :create, params: { card: card.attributes }
        }.to change(Card, :count).by(1)
      end
    

      it 'renders a JSON response with the new card' do
        post :create, params: { card: valid_attributes }
        expect(response).to have_http_status(:created)
        expect(response.content_type).to eq('application/json')
        expect(response.location).to eq(api_v1_card_path(id: Card.last.id))
      end
    end
      
    context 'with invalid params' do
      it 'renders a JSON response with errors for the new card' do
        post :create, params: { card: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'PUT #update' do
    let!(:card) { create(:card) }

    context 'with valid params' do
      let(:new_attributes) {
        { summary: 'new summary' }
      }

      it 'updates the requested card' do
        put :update, params: { id: card.id, card: new_attributes }
        card.reload
        expect(card.summary).to eq new_attributes[:summary]
      end

      it 'renders a JSON response with the card' do
        put :update, params: { id: card.to_param, card: valid_attributes }
        expect(response).to have_http_status(:ok)
        expect(response.content_type).to eq('application/json')
      end
    end

    context 'with invalid params' do
      it 'renders a JSON response with errors for the card' do
        put :update, params: { id: card.to_param, card: invalid_attributes }
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq('application/json')
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:card) { create(:card) }

    it 'destroys the requested story' do
      expect {
        delete :destroy, params: { id: card.id }
      }.to change(Card, :count).by(-1)
    end
  end

end