class Card < ApplicationRecord
  validates :name, :summary, :full_meaning, :upright, :reversed, :image_url, presence: true
end
