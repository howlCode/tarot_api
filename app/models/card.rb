class Card < ApplicationRecord
  has_attached_file :face_image, styles: { large: "500x500>", medium: "300x300>", small: "100x100>" }
  validates_attachment_content_type :face_image, content_type: /\Aimage\/.*\z/
  validates :name, :short_meaning, :full_meaning, :up, :reverse, :face_image, presence: true

  def face_image_url
    'http://localhost:3000' + face_image(:medium)
  end

end
