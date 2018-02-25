class CardSerializer < ActiveModel::Serializer
  attributes :id, :name, :face_image_url, :short_meaning, :full_meaning, :up, :reverse
end
