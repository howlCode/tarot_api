class Card < ApplicationRecord
  validates :name, :summary, :full_meaning, :upright, :reversed, :image, presence: true
end
