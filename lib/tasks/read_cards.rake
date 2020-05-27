namespace :read_cards do
  require "json"

  task :load_cards => :environment do
    Card.connection
    Card.delete_all
    cards = JSON.parse(File.read("lib/cards.json"))

    cards.each do |card|
      new_card = Card.new
      new_card.name = card["name"]
      new_card.summary = card["summary"]
      new_card.full_meaning = card["full_meaning"]

      new_card.card_index = card['card_index']
      new_card.image = card["image"]

      new_card.upright = card['upright']
      new_card.reversed = card['reversed']

      new_card.save
    end
  end
  
  def card_image(name, number)
    base_path = "public/images/deck/"
    base_path + number.to_s + '_' + name.gsub("-", " ").titleize.gsub("The ", "") + '.jpg'
  end
end
