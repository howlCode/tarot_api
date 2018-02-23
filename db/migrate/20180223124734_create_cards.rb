class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.string :short_meaning, null: false
      t.text :full_meaning, null: false
      t.string :up, null: false
      t.string :reverse, null: false

      t.timestamps
    end
  end
end
