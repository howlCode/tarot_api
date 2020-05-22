class AddCardIndexToCard < ActiveRecord::Migration[6.0]
  def change
    add_column :cards, :card_index, :int
  end
end
