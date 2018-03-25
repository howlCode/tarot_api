Rails.application.routes.draw do

resources :cards

get 'spreads/shuffled' => "spreads#shuffle"
get 'spreads/three_cards' => "spreads#three_cards"
get 'spreads/celtic_cross' => "spreads#celtic_cross"

end
