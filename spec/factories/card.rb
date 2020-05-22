FactoryBot.define do
  factory :card do
    name { Faker::Lovecraft.sentence }
    summary { Faker::Lovecraft.sentence }
    full_meaning { Faker::Lovecraft.sentence }
    upright { Faker::Lovecraft.sentence }
    reversed { Faker::Lovecraft.sentence }
    image { Faker::Internet.url }
  end
end