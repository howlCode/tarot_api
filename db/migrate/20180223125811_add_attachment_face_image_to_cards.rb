class AddAttachmentFaceImageToCards < ActiveRecord::Migration[5.1]
  def self.up
    change_table :cards do |t|
      t.attachment :face_image
    end
  end

  def self.down
    remove_attachment :cards, :face_image
  end
end
