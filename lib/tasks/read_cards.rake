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

      # new_card.card_index = card_number(new_card.name)
      new_card.image = card["image"]

      new_card.upright = card['upright']
      new_card.reversed = card['reversed']

      new_card.save
    end
  end

  def card_numbers
    return @card_numbers if @card_numbers.present?

    @card_numbers = {}
    Dir.entries("public/images/deck").each do |image_name|
      number = image_name.split("_")[0]

      file = image_name.gsub(".jpg", "").split("_").slice(1, 10).join(" ")
      @card_numbers[file] = number
    end

    @card_numbers
  end

  def card_number(name)
    card_numbers[name.gsub('-', ' ').titleize.gsub('The ', '')].to_i
  end

  def card_image(name, number)
    base_path = "public/images/deck/"
    base_path + number.to_s + '_' + name.gsub("-", " ").titleize.gsub("The ", "") + '.jpg'
  end
end
