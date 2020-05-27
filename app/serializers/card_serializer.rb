class CardSerializer < ActiveModel::Serializer
  attributes :name, :summary, :full_meaning, :upright, :reversed, :image, :card_index
end
