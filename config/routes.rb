Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :cards

      get 'spreads/random_card' => "spreads#random_card"
      get 'spreads/shuffled' => "spreads#shuffle"
      get 'spreads/three_cards' => "spreads#three_cards"
      get 'spreads/celtic_cross' => "spreads#celtic_cross"
    end
  end

end
