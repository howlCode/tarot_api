class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :face_image_url, :summary, :full_meaning, :upright, :reversed
end
