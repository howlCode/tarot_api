class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.string :summary, null: false
      t.text :full_meaning, null: false
      t.string :upright, null: false
      t.string :reversed, null: false
      t.string :image_url, null: false

      t.timestamps
    end
  end
end
