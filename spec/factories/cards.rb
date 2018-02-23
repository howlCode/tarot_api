FactoryBot.define do
  factory :card do
    name 'The Fool'
    short_meaning 'A new phase in life and an urge to explore new aspects of yourself. Decisions have to be thought through carefully; don’t lead yourself into unsuitable or difficult situations.'
    full_meaning ' Something new is starting for the Subject which could be a new relationship, job or home.   This is likely to be an exciting time for them with lots of hope and anticipation for the future.  The Subject is so caught up in the buzz of it all that they may not be thinking as clearly as they should.
                  The Subject should be receptive to change and doing things they wouldn’t normally.  In doing so they will learn about different sides of themself and even discover new things they want out of life.   The Subject will be feeling happy, confident and ready to face what is ahead of them.'
    up 'Innocence. New beginnings. Free spirit'
    reverse 'Recklessness. Taken advantage of. Inconsideration.'
    face_image { File.new("#{Rails.root}/spec/support/fixtures/image.jpg") }
  end
end
