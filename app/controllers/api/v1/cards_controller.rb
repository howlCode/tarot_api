module Api
  module V1
    class CardsController < ActionController::API
      before_action :set_card, only: [:show, :update, :destroy]

      def index
        @cards = Card.all
        render json: @cards
      end

      def show
        render json: @card
      end

      def create
        @card = Card.new(card_params)

        if @card.save
          render json: @card, status: :created, location: api_v1_card_path(@card)
        else
          render json: @card.errors, status: :unprocessable_entity
        end
      end

      def update
        if @card.update(card_params)
          render json: @card
        else
          render json: @card.errors, status: :unprocessable_entity
        end
      end

      def destroy
        @card.destroy
      end

      private
        def set_card
          @card = Card.find_by(id: params[:id])
        end

        def card_params
          params.require(:card).permit(:name, :summary, :full_meaning, :upright, :reversed, :image)
        end

    end
  end
end
