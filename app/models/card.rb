class Card < ApplicationRecord
  validates :name, :summary, :full_meaning, :upright, :reversed, :image, :card_index, presence: true
end
