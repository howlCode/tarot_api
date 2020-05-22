class CardSerializer < ActiveModel::Serializer
  attributes :card_index, :name, :image, :summary, :full_meaning, :upright, :reversed
end
