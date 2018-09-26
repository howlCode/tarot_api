FactoryBot.define do
  factory :card do
    name { Faker::Lovecraft.sentence }
    summary { Faker::Lovecraft.sentence }
    full_meaning { Faker::Lovecraft.sentence }
    upright { Faker::Lovecraft.sentence }
    reversed { Faker::Lovecraft.sentence }
    face_image { File.new("#{Rails.root}/spec/support/fixtures/deckback.jpg") }
  end
end