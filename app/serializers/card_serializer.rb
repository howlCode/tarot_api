class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :image_url, :summary, :full_meaning, :upright, :reversed
end
