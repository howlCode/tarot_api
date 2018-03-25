require 'nokogiri'
require 'open-uri'

card_name_major = ['the-fool', 'the-magician', 'the-empress', 'the-emperor', 'the-high-priestess',
             'the-hierophant', 'the-lovers', 'the-chariot', 'justice', 'temperance',
             'strength', 'the-hermit', 'the-wheel-of-fortune', 'the-hanged-man',
             'death', 'the-devil', 'the-tower', 'the-star', 'the-moon', 'the-sun',
             'judgement', 'the-world']

card_name_major.each do |c|
  page_for_card_info = "https://www.simplytarot.com/tarot-card-meanings/major-arcana-tarot-card-meanings/#{c}/"
  page = Nokogiri::HTML(open(page_for_card_info))
  page_element = page.css("div.card p")
  puts page_element.text
end
