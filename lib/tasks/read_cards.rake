require "#{Rails.root}/app/models/application_record"
require "#{Rails.root}/app/models/card"

namespace :read_cards do
  require "json"

  task :load_cards => :environment do
    cards = JSON.parse(File.read("lib/cards.json"))

    cards.each do |card|
      new_card = Card()
      new_card.name = card["name"]
      new_card.summary = card["summary"]
      new_card.save
    end
  end
end
