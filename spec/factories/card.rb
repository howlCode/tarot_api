require 'faker'

FactoryBot.define do
  factory :card do
    name { Faker::Books::Lovecraft.sentence }
    summary { Faker::Books::Lovecraft.sentence }
    full_meaning { Faker::Books::Lovecraft.sentence }
    upright { Faker::Books::Lovecraft.sentence }
    reversed { Faker::Books::Lovecraft.sentence }
    image { Faker::Internet.url }
    card_index { 1 }
  end
end