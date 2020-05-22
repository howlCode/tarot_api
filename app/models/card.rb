class Card < ApplicationRecord
  validates :name, :summary, :full_meaning, :image, presence: true
end
