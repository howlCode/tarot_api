class Card < ApplicationRecord
  has_attached_file :face_image, styles: { large: "500x500>", medium: "300x300>", small: "100x100>" }
  validates_attachment_content_type :face_image, content_type: /\Aimage\/.*\z/
  validates :name, :summary, :full_meaning, :upright, :reversed, :face_image, presence: true

  def face_image_url
    'http://localhost:3000' + face_image(:medium)
  end

  # def face_image_url
  #   'https://tarot.howlcode.com' + face_image(:medium)
  # end

end
