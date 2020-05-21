class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :image, :summary, :full_meaning, :upright, :reversed
end
