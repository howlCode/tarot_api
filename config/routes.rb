Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'cards#index'
  namespace :api do
    namespace :v1 do
      resources :cards

      get 'spreads/random_card' => "spreads#random_card"
      get 'spreads/shuffled' => "spreads#shuffle"
      get 'spreads/three_cards' => "spreads#three_cards"
      get 'spreads/celtic_cross' => "spreads#celtic_cross"
    end
  end

  resources :cards, only: %i[index show]
end
